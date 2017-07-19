from Metodos import *
import subprocess
import time
def timeit_msec(command):
        resultado =  subprocess.check_output(command, shell=True).split(" ")
        print resultado
        if resultado[6] == "usec":
                return float(resultado[5])/1000
        if resultado[6] == "sec":
                return float(resultado[5])*1000    
        if resultado[6] == "msec":
                return float(resultado[5])        
        return None

def getFeatures2(coOccurenceNormalized, gray):
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


passos = []
lista = []
for i in range(1,1000):
        if (3456/i,4608/i) not in lista:
                lista.append((3456/i,4608/i))
                passos.append(i)
#for i,j in enumerate(passos):
        #print lista[i],passos[i]
        
passos = [100,50,10,1]
passos.sort(reverse=1)
stri = []
stri.append("")
for i in passos:
        stri[0]+= "{}\t".format((3456/i,4608/i))
stri.append("")
stri.append("")
stri.append("")
stri.append("")
stri.append("")
#for i in passos:
        #resultado = []
        #resultado2 = []              
        #for j in range(10):  
                #command = " python -m timeit -n {:d} -r {:d}".format(1, 1)
                #command += ' "from Metodos import GLCM_tipo1,resize_img_passo"'
                #command += ' "import cv2"'
                #command += ' "GLCM_tipo1(cv2.imread('
                #command += "'../C++/Imagens/{:03d}_passo.JPG',0),1.0)".format(i)
                #command += '"'
                #resultado.append(timeit_msec(command))
                #command = " python -m timeit -n {:d} -r {:d}".format(1, 1)
                #command += ' "from Metodos import GLCM_tipo2,resize_img_passo"'
                #command += ' "import cv2"'
                #command += ' "GLCM_tipo2(cv2.imread('
                #command += "'../C++/Imagens/{:03d}_passo.JPG',0),1.0)".format(i)
                #command += '"'
                #resultado2.append(timeit_msec(command))
                ##print resultado
                #Salvar_texto(str(resultado), "../RESULTADOS/time_GLCM_{}_lucas10.txt".format(i))
                #Salvar_texto(str(resultado2), "../RESULTADOS/time_GLCM_{}_CFS.txt".format(i))    
        #stri[1]+= "{:4.02f}\t".format(float(np.average(resultado)))
        #stri[2]+= "{:4.02f}\t".format(float(np.average(resultado2)))
        #for lin in stri:
                #print lin        

                
                
        
for i in passos:
        cmd1 = []
        cmd2 = []
        cmd3 = [] 
        cmd4 = []
        cmd5 = []
        for j in range(10):
                ##Carregar Imagem:
                start = time.time()
                img = cv2.imread("../C++/Imagens/{:03d}_passo.JPG".format(i),0)
                end = time.time()
                cmd1.append((end-start)*1000)
                
                print cmd1
                ##Extrair a coOccurence                
                start = time.time()
                coOccurence = getCoOccurrenceMatrixMod(img, 256)
                end = time.time()                
                cmd2.append((end-start)*1000)
                print cmd2
                ##Normalizar a coOccurence                
                start = time.time()
                coOccurenceNormalized = normalizeCoOccurrenceMatrix(coOccurence,img,256)
                end = time.time()
                cmd3.append((end-start)*1000)
                print cmd3
                ##Extrair as caracteristicas               
                start = time.time()
                getFeatures2(coOccurenceNormalized, 256)
                end = time.time()
                cmd4.append((end-start)*1000)
                print cmd4
                ##Classificacao               
                start = time.time()              
                svm = cv2.SVM()
                svm.load('DataBase/SVM_Vectors.txt')
                svm.predict(np.float32([1,2,3,4,5,6,7,8,9,10]))
                end = time.time()
                cmd5.append((end-start)*1000)
                print cmd5
                print

        stri[1] += "{:05.02f}\t".format(min(cmd1))
        stri[2] += "{:05.02f}\t".format(min(cmd2))
        stri[3] += "{:05.02f}\t".format(min(cmd3))
        stri[4] += "{:05.02f}\t".format(min(cmd4))
        stri[5] += "{:05.02f}\t".format(min(cmd5))
        for ki in stri:
                print ki

        
for i in passos:
        cmd1 = []
        cmd2 = []
        cmd3 = [] 
        cmd4 = []
        cmd5 = []
        for j in range(3):
                ##Carregar Imagem:
                command = " python -m timeit -n {:d} -r {:d} -t".format(1, 1)
                command += ' "from Metodos import *"'
                command += ' "import cv2"'
                command += ' "cv2.imread('
                command += "'../C++/Imagens/{:03d}_passo.JPG',0)".format(i)
                command += '"'        
                cmd1.append(timeit_msec(command))
                print cmd1
                ##Extrair a coOccurence                
                command = " python -m timeit -n {:d} -r {:d} -t".format(1, 1)
                command += ' "from Metodos import *"'
                command += ' "import cv2"'
                command += ' "img = cv2.imread('
                command += "'../C++/Imagens/{:03d}_passo.JPG',0)".format(i)
                command += '"' 
                command += ' "coOccurence = getCoOccurrenceMatrixMod(img, 256)"'
                cmd2.append(timeit_msec(command))
                print cmd2
                ##Normalizar a coOccurence                
                command = " python -m timeit -n {:d} -r {:d} -t".format(1, 1)
                command += ' "from Metodos import *"'
                command += ' "import cv2"'
                command += ' "img = cv2.imread('
                command += "'../C++/Imagens/{:03d}_passo.JPG',0)".format(i)
                command += '"' 
                command += ' "coOccurence = getCoOccurrenceMatrixMod(img, 256)"'
                command += ' "coOccurenceNormalized = normalizeCoOccurrenceMatrix(coOccurence,img,256)"'
                cmd3.append(timeit_msec(command))
                print cmd3
                ##Extrair as caracteristicas               
                command = " python -m timeit -n {:d} -r {:d} -t".format(1, 1)
                command += ' "from Metodos import *"'
                command += ' "import cv2"'
                command += ' "img = cv2.imread('
                command += "'../C++/Imagens/{:03d}_passo.JPG',0)".format(i)
                command += '"' 
                command += ' "GLCM_tipo1(img, 1.0)"'
                cmd4.append(timeit_msec(command))
                print cmd4
                ##Classificacao               
                command = " python -m timeit -n {:d} -r {:d} -t".format(1, 1)
                command += ' "from Metodos import *"'
                command += ' "import cv2;import numpy as np"'
                command += ' "svm = cv2.SVM()"' 
                command += ' "svm.load(' + "'DataBase/SVM_Vectors.txt')" +'"'
                command += ' "svm.predict(np.float32([1,2,3,4,5,6,7,8,9,10]))"'
                cmd5.append(timeit_msec(command))
                for ki in stri:
                        print ki                
        stri[1] += "{:05.02f}\t".format(np.average(cmd1))
        stri[2] += "{:05.02f}\t".format(np.average(cmd2)-np.average(cmd1))
        stri[3] += "{:05.02f}\t".format(np.average(cmd3)-np.average(cmd2))
        stri[4] += "{:05.02f}\t".format(np.average(cmd4)-np.average(cmd3))
        stri[5] += "{:05.02f}\t".format(np.average(cmd5))
        