from Metodos import *
import cv2
svm = cv2.SVM()


men1 =  memory()
svm.load("DataBase/SVM_Vectors.txt")
men2 =  memory()
print "Arquivo vetores tamanho:",men2['used']-men1['used'] ,"Kb\n"
