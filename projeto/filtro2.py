
import cv2.cv as cv
for i in range(1,81):
	
	name = str(i) + ".pgm"
	im = cv.LoadImageM(name,cv.CV_LOAD_IMAGE_GRAYSCALE)
	lapl= im
	gauss= im
	cv.Smooth(im,gauss,cv.CV_GAUSSIAN, 3,3,0,0)
	cv.Laplace(gauss,lapl,3)
	out = "l" + name
	
	cv.SaveImage(out, lapl)
	



