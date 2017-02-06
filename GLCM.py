
import cv2
import numpy as np

def getCoOccurrenceMatrix(image, grayscale):
    coOccurence = np.zeros((grayscale,grayscale))
    for i in range(len(image)):
        for j in range(len(image[0])):
            coOccurence[image[i][j]][image[i][j+1]]= coOccurence[image[i][j]][image[i][j+1]] +1
    return coOccurence 


# Load an color image in grayscale
img = cv2.imread('DataBase/c1_1.JPG',0)
imgQuantized = img.copy()

coOccurence = getCoOccurrenceMatrix(imgQuantized, 256)

print coOccurence
