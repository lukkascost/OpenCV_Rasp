import cv2
import numpy as np
import math as mp
from memory_profiler import profile
passos = []
lista = []
for i in range(101,1000):
    if (3456/i,4608/i) not in lista:
        lista.append((3456/i,4608/i))
        passos.append(i)
passos.sort(reverse=0)
for i in passos:
	print i 
	fp1 = open("MEMORIA/{:03d}_PASSO_GLCM.txt".format(i),'w+')
	fp2 = open("MEMORIA/{:03d}_PASSO_coOccurrence.txt".format(i),'w+')
	fp3 = open("MEMORIA/{:03d}_PASSO_Normalize.txt".format(i),'w+')
	fp4 = open("MEMORIA/{:03d}_PASSO_getFeatures.txt".format(i),'w+')
	@profile(precision=10, stream=fp1)
	def GLCM(passo):
		img = cv2.imread("Imagens/{:03d}_passo.JPG".format(passo),0)
		imgQuantized = img.copy()
		coOccurence = getCoOccurrenceMatrix(imgQuantized, 256)
		coOccurenceNormalized = normalizeCoOccurrenceMatrix(coOccurence,imgQuantized,256)
		glcm_features  = getFeatures(coOccurenceNormalized, 256)
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
	def getFeatures(coOccurenceNormalized, grayscale):
	    glcm_features = np.zeros(10)
	    correlation,mean1,mean2,deviation,deviation1,deviation2 = 0,0,0,0,0,0
	    for i in range(grayscale):
	        for j in range(grayscale):
	            glcm_features[0] =glcm_features[0] + ( (i-j) * (i-j) * (coOccurenceNormalized[i][j]))
	            glcm_features[2] =glcm_features[2] + (coOccurenceNormalized[i][j] * coOccurenceNormalized[i][j] )
	            glcm_features[3] =glcm_features[3] + (( coOccurenceNormalized[i][j]) / ( 1+abs(i-j) ));
	            if(i!=j):
	                glcm_features[4]=glcm_features[4] + (coOccurenceNormalized[i][j] / (1 + (i-j)*(i-j)))
	                glcm_features[6]=glcm_features[6] + (coOccurenceNormalized[i][j]*(abs(i-j)) )
	            if(coOccurenceNormalized[i][j]!=0):
	                glcm_features[5] =glcm_features[5] + (coOccurenceNormalized[i][j]*mp.log10(coOccurenceNormalized[i][j]))
	            glcm_features[7] = glcm_features[7] +(coOccurenceNormalized[i][j]*coOccurenceNormalized[i][j])
	            correlation = correlation + ( (i*j) * ( (coOccurenceNormalized[i][j]) ) )
	            mean1 = mean1+(i * ( (coOccurenceNormalized[i][j]) ))
	            mean2+= (j * ( (coOccurenceNormalized[i][j]) ))
	            deviation1+= ( (i*i) * (coOccurenceNormalized[i][j]) )
	            deviation2+= ( (j*j) * (coOccurenceNormalized[i][j]) )
	    glcm_features[5] *= -1
	    deviation1-=mean1*mean1
	    deviation2-=mean2*mean2
	    deviation1=mp.sqrt(deviation1)
	    deviation2=mp.sqrt(deviation2)
	    deviation=(deviation1*deviation2)
	    if(deviation==0):
	        deviation = 1
	    glcm_features[1]=(correlation-(mean1*mean2))/deviation

	    for i in range(grayscale):
	        for j in range(grayscale):
	            glcm_features[8] += ((i-(mean1+mean2)/2)*(i-(mean1+mean2)/2))*coOccurenceNormalized[i][j]
	    return glcm_features
	GLCM(i)
