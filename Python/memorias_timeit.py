from Metodos import *
import timeit
import cv2

t = timeit.Timer("cv2.imread('DataBase/c1_1.JPG',0)",setup = "import cv2")
print t.repeat(2,50)
print timeit.timeit("cv2.imread('DataBase/c1_1.JPG',0)",setup = "import cv2",number=50)

img = cv2.imread('DataBase/c1_1.JPG',0)
imgQuantized = img.copy()

coOccurence = getCoOccurrenceMatrix(imgQuantized, 256)
#coOccurenceNormalized = normalizeCoOccurrenceMatrix(coOccurence,imgQuantized,256)
#glcm_features  = getFeatures(coOccurenceNormalized, 256)


Vetores = cv2.SVM()
Vetores.load("DataBase/SVM_Vectors.txt")

Teste = ler_arquivo("DataBase/teste.txt")
TesteLabel = ler_arquivo("DataBase/testeLabel.txt")

acerto = 0
acerto2 = 0
erro = 0
res = float(Vetores.predict(np.float32(Teste[0])))





