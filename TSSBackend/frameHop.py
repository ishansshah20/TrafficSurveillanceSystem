import cv2

vs = cv2.VideoCapture("videos/IIM Full.mp4")

print("Showing frames...")
c=1

while True:

	grabbed, frame = vs.read()
	if c%30==0:
		cv2.imshow('Frame',frame)
		cv2.waitKey(1)
	c+=1

vs.release()