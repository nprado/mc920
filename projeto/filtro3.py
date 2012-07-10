
import cv2.cv as cv
for i in range(1,81):
	
	name = str(i) + ".pgm"
	im = cv.LoadImageM(name,cv.CV_LOAD_IMAGE_GRAYSCALE)
	morf= im
	temp = im
	
	cv.MorphologyEx(im, morf, temp	 ,  cv.CreateStructuringElementEx(10, 10, 0, 0, cv.CV_SHAPE_ELLIPSE ),cv.CV_MOP_OPEN, iterations=1)
	out = "m" + name
	
	cv.SaveImage(out, morf)
	



