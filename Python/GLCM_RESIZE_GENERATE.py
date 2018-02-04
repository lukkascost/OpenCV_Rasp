from MachineLearn.Classes.Extractors.GLCM import GLCM
import numpy as np 
import cv2
k = 50
nbits = 5
listGLCM = []
for lin in range(15):
        for col in range(40):
                img = cv2.imread("../../Leandro/P{:02d}_{:02d}.JPG".format(lin+1,col+1),0)
                print lin+1,col+1
                ### decimacao 
                klist = [x for x in range(0,img.shape[0],k)]
                klist2 = [x for x in range(0,img.shape[1],k)]
                img = img[klist]
                img = img[:,klist2]
                img = img/2**(8-nbits)                
                oGlcm = GLCM(img, nbits)
                oGlcm.generateCoOccurenceHorizontal()
                oGlcm.normalizeCoOccurence()
                oGlcm.calculateAttributes()                
                listGLCM.append(oGlcm.exportToClassfier(lin+1))
                
listGLCM = np.array(listGLCM)
print listGLCM
                
np.savetxt("GLCM_RESIZE/DECIMACAO_BASE_LEANDRO/FEATURES_M50_CM5b.txt", listGLCM, fmt='%.18e', delimiter=',', newline='\n', header='', 
          footer='', comments='# ')
