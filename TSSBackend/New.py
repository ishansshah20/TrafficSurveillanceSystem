# USAGE
# python New.py --background1 videos/black1.mp4 --background2 videos/black2.mp4 --background3 videos/black3.mp4 --video videos/IIM.mp4 --output output/IIM_output.avi --yolo yolo-coco

# import the necessary packages
import numpy as np
import pandas as pd
import argparse
import imutils
import time
import cv2
import os

# construct the argument parse and parse the arguments
ap = argparse.ArgumentParser()
ap.add_argument("-i", "--background1", required=True,
    help="path to input background1")
ap.add_argument("-j", "--background2", required=True,
    help="path to input background2")
ap.add_argument("-k", "--background3", required=True,
    help="path to input background3")
ap.add_argument("-l", "--video", required=True,
    help="path to input video")
ap.add_argument("-o", "--output", required=True,
    help="path to output video")
ap.add_argument("-y", "--yolo", required=True,
    help="base path to YOLO directory")
ap.add_argument("-c", "--confidence", type=float, default=0.5,
    help="minimum probability to filter weak detections")
ap.add_argument("-t", "--threshold", type=float, default=0.3,
    help="threshold when applyong non-maxima suppression")
args = vars(ap.parse_args())

# taking backgrounds from file
bg=['a','b','c']
bg[0] = cv2.VideoCapture(args["background1"])
bg[1]= cv2.VideoCapture(args["background2"])
bg[2]= cv2.VideoCapture(args["background3"])
a=[1,1,1]

# function for counting each second
j=0
def timer(t,j):
    while t > 0 and True:
        (grabbed_bg, frame_bg) = bg[j].read()
        text="Signal " + str(j+1) + " - Counter: "+ str(t)
        cv2.putText(frame_bg,text,(0,50),cv2.FONT_HERSHEY_SIMPLEX, 2.0, (255, 255, 255), lineType=cv2.LINE_AA)
        t-=1
        time.sleep(1)
        cv2.imshow('Frame',frame_bg)
        cv2.waitKey(1)
    bg[j].release()
    return j+1

#Function for printing the counter
def print_counter(x):
    
    cv2.putText(frame,"Counter:" +str(x),(672,50),cv2.FONT_HERSHEY_SIMPLEX, 2.0, (0, 255, 0), 2)
    
# loop for calling timer function for each signal
for i in range(3):

    print("Signal 1:")
    j=timer(a[0],j)
    a[1]=a[1] + a[0]
    a[2]=a[2] + a[0]
    if(a[1]>60):
        a[1]=60
    if(a[2]>60):
        a[2]=60

    print("Signal 2:")
    j=timer(a[1],j)
    a[0]=a[0] + a[1]
    a[2]=a[2] + a[1]
    if(a[0]>60):
        a[0]=60
    if(a[2]>60):
        a[2]=60

    print("Signal 3:")
    j=timer(a[2],j)
    a[0]=a[0] + a[2]
    a[1]=a[1] + a[2]
    if(a[0]>60):
        a[0]=60
    if(a[1]>60):
        a[1]=60
    j=0
    
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
    vs = cv2.VideoCapture(args["video"])
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
            writer = cv2.VideoWriter(args["output"], fourcc, 30,
                (frame.shape[1], frame.shape[0]), True)
    
            # some information on processing single frame
            if total > 0:
                elap = (end - start)
                print("[INFO] single frame took {:.4f} seconds".format(elap))
                print("[INFO] estimated total time to finish: {:.4f}".format(
                    elap * total))
        
        cv2.putText(frame,"Signal 4:", (0,25), cv2.FONT_HERSHEY_SIMPLEX, 1.0, (0, 0, 0), 2)
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
        y_pred=regressor.predict([[max_motorbikes, max_cars, max_trucks, max_buss]])
        #counter=(max_cars+max_buss+max_motorbikes+max_motorbikes)
        print_counter(y_pred)
               
        # write the output frame to disk
        writer.write(frame)
        cv2.imshow('Frame',frame)
        cv2.waitKey(1)
        
    # release the file pointers
    print("[INFO] cleaning up...")
    writer.release()
    vs.release()
