#python untitled0.py --background1 videos/black1.mp4 --background2 videos/black2.mp4 --background3 videos/black3.mp4 --video videos/IIM.mp4 --output output/IIM_output.avi --yolo yolo-coco
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
    #bg[j].release()
    return j+1

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
