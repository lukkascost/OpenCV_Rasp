import cv2
import numpy as np

# Load an color image in grayscale
img = cv2.imread('DataBase/c1_1.JPG',0)
imgQuantized = img.copy()

print img, imgQuantized
