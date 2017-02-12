
import cv2
import numpy as np
import math as mp
from Metodos import *
# Load an color image in grayscale
img = cv2.imread('DataBase/c1_1.JPG',0)
imgQuantized = img.copy()

coOccurence = getCoOccurrenceMatrix(imgQuantized, 256)
coOccurenceNormalized = normalizeCoOccurrenceMatrix(coOccurence,imgQuantized,256)
glcm_features  = getFeatures(coOccurenceNormalized, 256)


print glcm_features
