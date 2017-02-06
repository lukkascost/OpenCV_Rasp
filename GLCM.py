
import cv2
import numpy as np

def getCoOccurrenceMatrix(image, grayscale):
    coOccurence = np.zeros((grayscale,grayscale))
    for i in range(len(image)):
        for j in range(len(image[0])-1):
            coOccurence[image[i][j]][image[i][j+1]]= coOccurence[image[i][j]][image[i][j+1]] +1
	print i, j 
    return coOccurence 

def normalizeCoOccurrenceMatrix(coOccurence,imageQuantized, grayscale):
	coOccurenceNormalized = np.zeros((grayscale,grayscale))
	for i in range(grayscale):
		for j in range(grayscale):
			coOccurenceNormalized[i][j] = coOccurence[i][j]/(len(imageQuantized)*(len(imageQuantized[0]) -1)) 
	return coOccurenceNormalized


def getFeatures(coOccurenceNormalized, grayscale):
	glcm_features = np.zeros(9)
	for i in range(grayscale):
		for j in range(grayscale):
			glcm_features[0] =glcm_features[0] + ( (i-j) * (i-j) * (coOccurenceNormalized[i][j]))
			
	
	return glcm_features
# Load an color image in grayscale
img = cv2.imread('DataBase/c1_1.JPG',0)
imgQuantized = img.copy()

coOccurence = getCoOccurrenceMatrix(imgQuantized, 256)
coOccurenceNormalized = normalizeCoOccurrenceMatrix(coOccurence,imgQuantized,256)
glcm_features  = getFeatures(coOccurenceNormalized, 256)
print glcm_features
