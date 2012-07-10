
import cv2.cv as cv
for i in range(1,81):
	
	name = str(i) + ".pgm"
	im = cv.LoadImageM(name,cv.CV_LOAD_IMAGE_GRAYSCALE)
	gauss= im


	cv.Smooth(im,gauss,cv.CV_GAUSSIAN, 7,7,0,0)
	out = "s" + name
	
	cv.SaveImage(out, gauss)
	



