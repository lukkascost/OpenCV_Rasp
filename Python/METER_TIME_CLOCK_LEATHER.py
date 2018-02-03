import numpy as np
import time as tm
import cv2
from MachineLearn.Classes.Extractors.GLCM import GLCM


def measureTime(img):
        
        """
        Input data
        """        
        ########################################################################
        bits = 6
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
path = "../RESULTADOS/TIMES_FOR_EACH_IMG.txt"
#imgs_times = np.zeros((350,5))
#for j in range(7):
        #for k in range(50):
                #total_times = []
                #for i in range(100):
                        #total_times.append(measureTime(cv2.imread("img_resize_73/c{}_{}.JPG".format(j+1,k+1),0)))
                #total_times = np.array(total_times)
                #imgs_times[k+(j*50),:4] = np.min(total_times,axis=0)
                #imgs_times[k+(j*50),-1] = np.sum(np.min(total_times,axis=0))*1000 
                ##print np.sum(np.min(total_times,axis=0))*1000          
                #print imgs_times[k+(j*50)],k+(j*50)
                #np.savetxt("../RESULTADOS/TIMES_FOR_EACH_IMG.txt", imgs_times, delimiter=',')
                
array = np.loadtxt(path,delimiter=",")
print "Menor tempo total: ", np.min(array,axis=0)[-2]*1000000
print "Maior tempo total: ", np.max(array,axis=0)[-2]*1000000
array = array[:,-2]
array =  array.reshape((7,50,1))
array = array*1000000


for i,a in enumerate(array):
        print "Class: ",i+1,"\tAVG: ",np.average(a) ," \tSTD: " , np.std(a)
