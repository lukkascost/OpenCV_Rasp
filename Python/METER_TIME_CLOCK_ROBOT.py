import numpy as np
import time as tm
import cv2
from MachineLearn.Classes.Extractors.GLCM import GLCM

path1 = "../C++/Imagens_Leandro/"

def measureTime(img,bits=6):
        
        """
        Input data
        """        
        ########################################################################
        img = img/2**(8-bits)
        oGlcm = GLCM(img, bits, number_of_Attributes=10)
        basemask = np.array([1,2,5,9,15,16,17,21,22,23])
        basemask = basemask
        times = np.zeros(4)
        glcm_atributes = np.zeros(25,dtype=np.float64)  
        gray = 2**bits
        ########################################################################
        
        
        start=tm.time()
        oGlcm.generateCoOccurenceHorizontal()
        end = tm.time()
        times[0] = end-start
        ########################################################################
        
        
        start=tm.time()
        oGlcm.normalizeCoOccurence()
        end = tm.time()
        times[1] = end-start
        ########################################################################
        
        
        start=tm.time()
        for i in range(gray):       
                for j in range(gray):
                        ij = oGlcm.coOccurenceNormalized[i,j]
                        glcm_atributes[1]  += ij*ij
                        glcm_atributes[2]  += ((i-j)*(i-j) * (ij))
                        glcm_atributes[5]  += (ij)/(1+((i-j)*(i-j)))
                        glcm_atributes[9]  += ij* np.log10(ij+ 1e-30)                        
                        glcm_atributes[15] += (ij)/(1+abs(i-j))
                        glcm_atributes[16] += ij*(i+j)
                        glcm_atributes[21] += ij*abs(i-j)
                        glcm_atributes[22] += ij*(i-j)
                        glcm_atributes[23] += ij*i*j
        glcm_atributes[17] = np.amax(oGlcm.coOccurenceNormalized)
        glcm_atributes[16] /= 2
        glcm_atributes[22] /= 2
        glcm_atributes[9] *= -1        
        end = tm.time()
        times[2] = end-start
        ########################################################################
        
        
        oGlcm.setAtributesValues(glcm_atributes[basemask])
        svm = cv2.SVM()
        svm.load("SVM_LUCAS10_70.txt")
        
        start=tm.time()
        svm.predict(np.float32(oGlcm.attributes))
        end = tm.time()
        times[3] = end-start
        ########################################################################
        return times

## medicoes para cm=5b e variando o M.
imgs_times = np.zeros((4,5))
for k,m in enumerate([101,50,10,1]):
        total_times = []
        for i in range(100):
                total_times.append(measureTime(cv2.imread(path1+"{:03d}_passo.JPG".format(m),0),bits=5))        
        total_times = np.array(total_times)
        imgs_times[k,:4] = np.min(total_times,axis=0)
        imgs_times[k,-1] = np.sum(np.min(total_times,axis=0))   
        print imgs_times   
        np.savetxt("../RESULTADOS/T2_M100,50,10,1_CM5b.txt", imgs_times, delimiter=',')
        np.savetxt("../RESULTADOS/T2_M100,50,10,1_CM5b_Line_{:03d}.txt".format(k), total_times, delimiter=',')
        
        

## medicoes para m=1 e variando a matriz de correlaçao.
imgs_times = np.zeros((8,5))
for b in range(1,9):
        total_times = []
        for i in range(100):
                total_times.append(measureTime(cv2.imread(path1+"001_passo.JPG",0),bits=b))
                print total_times[-1],i
        total_times = np.array(total_times)
        imgs_times[b-1,:4] = np.min(total_times,axis=0)
        imgs_times[b-1,-1] = np.sum(np.min(total_times,axis=0))
        print imgs_times  
        np.savetxt("../RESULTADOS/T1_M1_CM1-8b.txt", imgs_times, delimiter=',')
        np.savetxt("../RESULTADOS/T1_M1_CM1-8b_Line_{:03d}.txt".format(b-1), total_times, delimiter=',')
        