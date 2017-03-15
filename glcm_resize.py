import thread
from Metodos import *
import random

def resize(i):
        for j in range(1,51):
                divisoes = [2, 3, 4, 6, 8]
                for divisao in divisoes:
                        img = img = cv2.imread('../couro_images_semfundo/c'+str(i)+'_'+str(j)+'.JPG',0)
                        img = cv2.transpose(img)
                        height, width = img.shape[:2]
                        print height, width

                        saida = np.zeros((width/divisao,height/divisao))
                        for k in range(height/divisao):
                                for g in range(width/divisao):
                                        a = divisao * k
                                        b = divisao * g
                                        saida.itemset((g,k),img[a][b])

                        cv2.imwrite('../couro_images_semfundo/'+str(divisao)+'/c'+str(i)+'_'+str(j)+'.JPG',saida)



resize(1)
resize(2)
resize(3)
resize(4)
resize(5)
resize(6)
resize(7)

        
