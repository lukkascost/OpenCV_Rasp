import thread
from Metodos import *
percent = 90
for i in range(2,21):
    cria_Arquivo_GLCM(float(i)/100,5,"ROI", '../ROI')
    cria_Arquivo_GLCM(float(i)/100,5,"DECIMACAO", '../couro_images')
          

