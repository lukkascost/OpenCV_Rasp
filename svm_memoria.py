import os
import cv2
svm = cv2.SVM()
os.system("cat /proc/"+str(os.getpid())+"/status > Memoria/svm_memoria_antes")
svm.load("DataBase/SVM_Vectors.txt")
os.system("cat /proc/"+str(os.getpid())+"/status > Memoria/svm_memoria_depois")
