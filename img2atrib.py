import cv2
import numpy as np
address ="DataBase/numbersDB/num_padronizado_MomCent_OpenCv.txt"
addressSave = "DataBase/GLCM.txt"

def GLCM(img):
	energy = 0.0
	contrast = 0.0
	homogenity = 0.0
	IDM = 0.0
	entropy	= 0.0
	dissimilarity = 0.0
	asm1 = 0
	correlation = 0.0
	mean1 = 0.0
	mean2 = 0.0
	omegai = 0.0
	imegaj = 0.0
	variance = 0.0
	sumEntropy =0.0
	sumAverage = 0.0
	diferenceEntropy = 0.0
	diferenceVariance = 0.0
	row,col = len(img), len(img[0])
	gl = np.zeros((256,256))
	print row,col
