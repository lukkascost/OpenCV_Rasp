import cv2
import numpy as np
import math as mp
from memory_profiler import profile
import sys 
passos = []
lista = []
for i in range(101,1000):
    if (3456/i,4608/i) not in lista:
        lista.append((3456/i,4608/i))
        passos.append(i)
passos = [int(sys.argv[1])]
passos.sort(reverse=1)
for i in passos:
	print i 
	fp1 = open("MEMORIA/_{:03d}_PASSO_GLCM.txt".format(i),'w+')
	fp2 = open("MEMORIA/_{:03d}_PASSO_coOccurrence.txt".format(i),'w+')
	fp3 = open("MEMORIA/_{:03d}_PASSO_Normalize.txt".format(i),'w+')
	fp4 = open("MEMORIA/_{:03d}_PASSO_getFeatures.txt".format(i),'w+')
	@profile(precision=10, stream=fp1)
	def GLCM(passo):
		img = cv2.imread("Imagens/{:03d}_passo.JPG".format(passo),0)
		imgQuantized = img.copy()
		coOccurence = getCoOccurrenceMatrix(imgQuantized, 256)
		coOccurenceNormalized = normalizeCoOccurrenceMatrix(coOccurence,imgQuantized,256)
		glcm_features  = getFeatures(coOccurenceNormalized, 256)
		svm  = cv2.SVM()
		svm.load("vetores.txt")
		svm.predict(np.float32([1,2,3,4,5,6,7,8,9]))
		return glcm_features
	@profile(precision=10, stream=fp2)
	def getCoOccurrenceMatrix(image, grayscale):
	    coOccurence = np.zeros((grayscale,grayscale))
	    for i in range(image.shape[0]):
	        for j in range(image.shape[1]-1):
	            coOccurence[image[i][j]][image[i][j+1]]= coOccurence[image[i][j]][image[i][j+1]] +1
	    return coOccurence 
	@profile(precision=10, stream=fp3)
	def normalizeCoOccurrenceMatrix(coOccurence,imageQuantized, grayscale):
		coOccurenceNormalized = np.zeros((grayscale,grayscale))
		for i in range(grayscale):
			for j in range(grayscale):
				coOccurenceNormalized[i][j] = coOccurence[i][j]/(len(imageQuantized)*(len(imageQuantized[0]) -1)) 
		return coOccurenceNormalized
	@profile(precision=10,stream=fp4)
	def getFeatures(coOccurenceNormalized, gray):
	        glcm_atributes = np.zeros(25,dtype=np.float64)  
		for i in range(gray):       
		    for j in range(gray):
			ij = coOccurenceNormalized[i,j]
			glcm_atributes[1]  += ij*ij
			glcm_atributes[2]  += ((i-j)*(i-j) * (ij))
			glcm_atributes[5]  += (ij)/(1+((i-j)*(i-j)))
			glcm_atributes[9]  += ij* np.log10(ij+ 1e-30)                        
			glcm_atributes[15] += (ij)/(1+abs(i-j))
			glcm_atributes[16] += ij*(i+j)
			glcm_atributes[21] += ij*abs(i-j)
			glcm_atributes[22] += ij*(i-j)
			glcm_atributes[23] += ij*i*j
		glcm_atributes[17] = np.amax(coOccurenceNormalized)
		glcm_atributes[16] /= 2
		glcm_atributes[22] /= 2
		return glcm_atributes[1:] 
	GLCM(i)
