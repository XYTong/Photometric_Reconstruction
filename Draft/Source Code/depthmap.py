import numpy as np
import cv2 as cv
from matplotlib import pyplot as plt
imgL = cv.imread('4.jpg',0)
imgR = cv.imread('5.jpg',0)
stereo = cv.StereoBM_create(numDisparities=16, blockSize=15)
disparity = stereo.compute(imgL,imgR)
plt.imshow(disparity,'gray')
plt.show()
