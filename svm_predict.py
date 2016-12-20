import cv2
import numpy as np
from svm import *
address ="DataBase/numbersDB/num_padronizado_MomCent_OpenCv.txt"
addressSave = "DataBase/DataBase_Normalized.txt"

Vetores = cv2.SVM()
Vetores.load(addressSave)

for tsample in range(int(objetos*(perTeste/100)-1)):
	test_sample = np.float32(Teste[tsample])
	res = int(Vetores.predict(test_sample))
	test = int(TesteLabel[tsample][0])

	if(test!=res): erro = erro +1
	else:  acerto = acerto +1
print "Taxa de acerto:", float((acerto*100))/float((acerto+erro))
