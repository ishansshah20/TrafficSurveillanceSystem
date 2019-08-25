__author__ = 'Ishan'

import cv2

vs = cv2.VideoCapture(" G:\TrafficSurveillanceProject\Dataset\IIM Signal 1(Full Trafiic).mp4")

while True:

    (grabbed, frame)=vs.read()

    cv2.putText(frame,"Number of vehicles:45",(50,50),cv2.FONT_HERSHEY_SIMPLEX, 1.0, (255, 255, 255), lineType=cv2.LINE_AA)

    cv2.imshow('Frame',frame)
    cv2.waitKey(1)




#cv2.putText(frame,"Number of vehicles:"+len(boxes),(50,50),cv2.FONT_HERSHEY_SIMPLEX, 1.0, (255, 255, 255), lineType=cv2.LINE_AA)
		#print(boxes)



python yolo_video.py --input "G:\TrafficSurveillanceProject\Dataset\IIM Full.mp4" --output output/airport_output.avi --yolo yolo-coco

python yolo.py --image images/traffic.jpg --yolo yolo-coco
