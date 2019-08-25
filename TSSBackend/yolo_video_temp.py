# USAGE
# python yolo_video_temp.py --video1 videos/1.mp4 --video2 videos/2.mp4 --video3 videos/3.mp4 --video4 videos/4.mp4 --output1 output/1.avi --output2 output/2.avi --output3 output/3.avi --output4 output/4.avi --yolo yolo-coco

# import the necessary packages
import numpy as np
import pandas as pd
import argparse
import imutils
import time
import cv2
import os
import pymysql
from datetime import datetime
#from datetime import time
from datetime import date
from flask import Flask,jsonify

app = Flask(__name__)

@app.route('/',methods=['get'])
def fn1():

    print("in url")

    result=fn2()

    print("result=",result)

    response = jsonify(result)

    print("response=", response)

    response.headers.add('Access-Control-Allow-Origin', '*')

    return response


@app.route("/showResult")
def fn2():
# construct the argument parse and parse the arguments 
    ap = argparse.ArgumentParser()
    ap.add_argument("-i", "--video1", required=True,
        help="path to input video1")
    ap.add_argument("-j", "--video2", required=True,
        help="path to input video2")
    ap.add_argument("-k", "--video3", required=True,
        help="path to input video3")
    ap.add_argument("-l", "--video4", required=True,
        help="path to input video4")
    ap.add_argument("-o", "--output1", required=True,
        help="path to output video")
    ap.add_argument("-p", "--output2", required=True,
        help="path to output video")
    ap.add_argument("-q", "--output3", required=True,
        help="path to output video")
    ap.add_argument("-r", "--output4", required=True,
        help="path to output video")
    ap.add_argument("-y", "--yolo", required=True,
        help="base path to YOLO directory")
    ap.add_argument("-c", "--confidence", type=float, default=0.5,
        help="minimum probability to filter weak detections")
    ap.add_argument("-t", "--threshold", type=float, default=0.3,
        help="threshold when applyong non-maxima suppression")
    args = vars(ap.parse_args())

    # taking videos from file
    bg=['a','b','c']
    bg[0] = cv2.VideoCapture(args["video1"])
    bg[1] = cv2.VideoCapture(args["video2"])
    bg[2] = cv2.VideoCapture(args["video3"])
    signalno=1

    # loop for calling timer function for each signal
    for i in range(4):

        # load the COCO class labels our YOLO model was trained on
        labelsPath = os.path.sep.join([args["yolo"], "coco.names"])
        LABELS = open(labelsPath).read().strip().split("\n")

        # initialize a list of colors to represent each possible class label
        np.random.seed(42)
        COLORS = np.random.randint(0, 255, size=(len(LABELS), 3),
            dtype="uint8")

        # derive the paths to the YOLO weights and model configuration
        weightsPath = os.path.sep.join([args["yolo"], "yolov3.weights"])
        configPath = os.path.sep.join([args["yolo"], "yolov3.cfg"])

        # load our YOLO object detector trained on COCO dataset (80 classes)
        # and determine only the *output* layer names that we need from YOLO
        print("[INFO] loading YOLO from disk...")
        net = cv2.dnn.readNetFromDarknet(configPath, weightsPath)
        ln = net.getLayerNames()
        ln = [ln[i[0] - 1] for i in net.getUnconnectedOutLayers()]

        # initialize the video stream, pointer to output video file, and
        # frame dimensions
        vs = cv2.VideoCapture(args["video"+str(i+1)])
        writer = None
        (W, H) = (None, None)

        # try to determine the total number of frames in the video file
        try:
            prop = cv2.cv.CV_CAP_PROP_FRAME_COUNT if imutils.is_cv2() \
                else cv2.CAP_PROP_FRAME_COUNT
            total = int(vs.get(prop))
            print("[INFO] {} total frames in video".format(total))

        # an error occurred while trying to determine the total
        # number of frames in the video file
        except:
            print("[INFO] could not determine # of frames in video")
            print("[INFO] no approx. completion time can be provided")
            total = -1

        cars=[]
        trucks=[]
        buss=[]
        motorbikes=[]
        c=1
        hop_counter=1
        hop=30
        # loop over frames from the video file stream
        while True:
            car=0
            truck=0
            bus=0
            motorbike=0

            # read the next frame from the file
            (grabbed, frame) = vs.read()

            # if the frame was not grabbed, then we have reached the end
            # of the stream
            if not grabbed:
                break

            # if the frame dimensions are empty, grab them
            if hop_counter%hop==0:
                if W is None or H is None:
                    (H, W) = frame.shape[:2]

                # construct a blob from the input frame and then perform a forward
                # pass of the YOLO object detector, giving us our bounding boxes
                # and associated probabilities
                blob = cv2.dnn.blobFromImage(frame, 1 / 255.0, (416, 416),
                    swapRB=True, crop=False)
                net.setInput(blob)
                start = time.time()
                layerOutputs = net.forward(ln)
                end = time.time()

                # initialize our lists of detected bounding boxes, confidences,
                # and class IDs, respectively
                boxes = []
                confidences = []
                classIDs = []

                # loop over each of the layer outputs
                for output in layerOutputs:
                    # loop over each of the detections
                    for detection in output:
                        # extract the class ID and confidence (i.e., probability)
                        # of the current object detection
                        scores = detection[5:]
                        classID = np.argmax(scores)
                        confidence = scores[classID]


                        # filter out weak predictions by ensuring the detected
                        # probability is greater than the minimum probability
                        if confidence > args["confidence"]:
                            # scale the bounding box coordinates back relative to
                            # the size of the image, keeping in mind that YOLO
                            # actually returns the center (x, y)-coordinates of
                            # the bounding box followed by the boxes' width and
                            # height
                            box = detection[0:4] * np.array([W, H, W, H])
                            (centerX, centerY, width, height) = box.astype("int")

                            # use the center (x, y)-coordinates to derive the top
                            # and and left corner of the bounding box
                            x = int(centerX - (width / 2))
                            y = int(centerY - (height / 2))

                            # update our list of bounding box coordinates,
                            # confidences, and class IDs
                            boxes.append([x, y, int(width), int(height)])
                            confidences.append(float(confidence))
                            classIDs.append(classID)
                    #print(len(boxes))
                # apply non-maxima suppression to suppress weak, overlapping
                # bounding boxes
                idxs = cv2.dnn.NMSBoxes(boxes, confidences, args["confidence"],
                    args["threshold"])

                # ensure at least one detection exists
                if len(idxs) > 0:
                    # loop over the indexes we are keeping
                    for i in idxs.flatten():
                        # extract the bounding box coordinates
                        (x, y) = (boxes[i][0], boxes[i][1])
                        (w, h) = (boxes[i][2], boxes[i][3])

                        # draw a bounding box rectangle and label on the frame
                        color = [int(c) for c in COLORS[classIDs[i]]]
                        cv2.rectangle(frame, (x, y), (x + w, y + h), color, 2)
                        text = "{}: {:.4f}".format(LABELS[classIDs[i]],
                            confidences[i])
                        cv2.putText(frame, text, (x, y - 5),
                            cv2.FONT_HERSHEY_SIMPLEX, 0.5, color, 2)

                        if(LABELS[classIDs[i]]=="car"):
                            car+=1
                        if(LABELS[classIDs[i]]=="truck"):
                            truck+=1
                        if(LABELS[classIDs[i]]=="person"):
                            motorbike+=1
                        if(LABELS[classIDs[i]]=="bus"):
                            bus+=1
                        if(LABELS[classIDs[i]]=="bicycle"):
                            motorbike+=1
                        if(LABELS[classIDs[i]]=="motorbike"):
                            motorbike+=1

                # check if the video writer is None
                if writer is None:
                    # initialize our video writer
                    fourcc = cv2.VideoWriter_fourcc(*"MJPG")
                    writer = cv2.VideoWriter(args["output"+str(signalno)], fourcc, 30,
                        (frame.shape[1], frame.shape[0]), True)

                    # some information on processing single frame
                    if total > 0:
                        elap = (end - start)
                        print("[INFO] single frame took {:.4f} seconds".format(elap))
                        print("[INFO] estimated total time to finish: {:.4f}".format(
                            elap * total))

                cv2.putText(frame,"Signal "+str(signalno)+":", (0,25), cv2.FONT_HERSHEY_SIMPLEX, 1.0, (0, 0, 0), 2)
                cars.append(car)
                max_cars=max(cars)
                cv2.putText(frame,"car-"+str(max_cars),(0,50),cv2.FONT_HERSHEY_SIMPLEX, 1.0, (0, 0, 0), 2)

                trucks.append(truck)
                max_trucks=max(trucks)
                cv2.putText(frame,"truck-"+str(max_trucks),(0,80),cv2.FONT_HERSHEY_SIMPLEX, 1.0, (0, 0, 0), 2)

                buss.append(bus)
                max_buss=max(buss)
                cv2.putText(frame,"bus-"+str(max_buss),(0,110),cv2.FONT_HERSHEY_SIMPLEX, 1.0, (0, 0, 0), 2)

                motorbikes.append(motorbike)
                max_motorbikes=max(motorbikes)
                cv2.putText(frame,"motorbike-"+str(max_motorbikes),(0,140),cv2.FONT_HERSHEY_SIMPLEX, 1.0, (0, 0, 0), 2)



                #Counter Logic
                #Importing the dataset
                dataset=pd.read_csv('Data.csv')
                x=dataset.iloc[:, :-1].values
                y=dataset.iloc[:, 4].values

                #Fitting Multiple Linear Regression to the Training set
                from sklearn.linear_model import LinearRegression
                regressor=LinearRegression()
                regressor.fit(x,y)

                #Predicting the Test set results
                y_pred=int(regressor.predict([[max_motorbikes, max_cars, max_trucks, max_buss]]))
                #counter=(max_cars+max_buss+max_motorbikes+max_motorbikes)

                #Condition for checking value of predicted counter value
                if(y_pred>60):
                    y_pred=60

                elif(y_pred<10):
                    y_pred=10

                #Printing Counter
                if(c==1):
                    counter=y_pred
                    cv2.putText(frame,"[Counter:" +str(counter)+"]",(960,50),cv2.FONT_HERSHEY_SIMPLEX, 2.0, (0, 255, 0), 2)

                else:
                    counter=counter-1
                    cv2.putText(frame,"[Counter:" +str(counter)+"]",(960,50),cv2.FONT_HERSHEY_SIMPLEX, 2.0, (0, 255, 0), 2)

                c=c+1
                if(counter<1):
                    c=1
                    break

                # write the output frame to disk
                writer.write(frame)
                cv2.imshow('Frame',frame)
                cv2.waitKey(1)
            hop_counter+=1
        # counting total vehicles
        total_vehicles = 0
        total_vehicles = str(max_cars + max_buss + max_trucks + max_motorbikes)
        print("signal " + str(signalno) + " total vehicles: ",total_vehicles)

        currentDT = datetime.now()
        time_today = currentDT.strftime("%I:%M:%S %p")
        print("Time is: ",time_today)

        today_date = str(date.today())
        print("Date is: ",today_date)

        t0 = time.time()
        right_now = str(time.strftime("%I %M %p", time.localtime(t0)))
        print("Right now: ",right_now)

        t1 = t0 + 60 * 60
        after_hour = str(time.strftime("%I %M %p", time.localtime(t1)))
        print("After 1 hour: ",after_hour)

        signalno+=1
        connection = pymysql.connect(
            host='localhost',
            user='root',
            password='root',
            db='traffic_project'
        )

        cursor1 = connection.cursor()

        cursor1.execute(
            "INSERT INTO vehicle_table(vehicleCount,today_date,start_time,end_time) VALUES ('"+total_vehicles+"','"+ today_date +"','"+ right_now +"','"+ after_hour +"')")

        connection.commit()

        cursor1.close()

        connection.close()



        # release the file pointers
        print("[INFO] cleaning up...")
        writer.release()
        vs.release()


app.run()