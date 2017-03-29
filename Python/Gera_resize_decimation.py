import thread
from Metodos import *
percent = 90
for i in range(35,0,-1):
        cria_Arquivo_GLCM(i,6,"PASSO_ROI", '../../ROI')
        cria_Arquivo_GLCM(i,6,"PASSO_DECIMACAO", '../../couro_images')
        cria_Arquivo_GLCM(i,6,"PASSO_ROI_PRETO", '../../couro_images_semfundo')
          

