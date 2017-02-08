
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
			glcm_features[2] =glcm_features[2] + (coOccurenceNormalized[i][j] * coOccurenceNormalized[i][j] )
			glcm_features[3] =glcm_features[3] + (( coOccurenceNormalized[i][j]) / ( 1+abs(i-j) ));
			if(i!=j):
				glcm_features[4]=glcm_features[4] + (coOccurenceNormalized[i][j] / (1 + (i-j)*(i-j)))
                		glcm_features[6]=glcm_features[6] + (coOccurenceNormalized[i][j]*(abs(i-j)) )
			 if(coOccurenceNormalized[i][j]!=0):
				glcm_features[5] =glcm_features[5] + (coOccurenceNormalized[i][j]*log10(coOccurenceNormalized[i][j]))
			glcm_features[7] = glcm_features[7] +(coOccurenceNormalized[i][j]*coOccurenceNormalized[i][j])
	return glcm_features
# Load an color image in grayscale
img = cv2.imread('DataBase/c1_1.JPG',0)
imgQuantized = img.copy()

coOccurence = getCoOccurrenceMatrix(imgQuantized, 256)
coOccurenceNormalized = normalizeCoOccurrenceMatrix(coOccurence,imgQuantized,256)
glcm_features  = getFeatures(coOccurenceNormalized, 256)
print glcm_features
