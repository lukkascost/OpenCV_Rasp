import thread
from Metodos import *
percent = 90

for i in range(22,101):
    thread.start_new_thread( cria_Arquivo_GLCM, ((float(i)/100),0,"INTER_NEAREST", '../couro_images'))
##    thread.start_new_thread( cria_Arquivo_GLCM, ((float(i)/100),1,"INTER_LINEAR"))
    thread.start_new_thread( cria_Arquivo_GLCM, ((float(i)/100),2,"INTER_AREA", '../couro_images'))
    thread.start_new_thread( cria_Arquivo_GLCM, ((float(i)/100),3,"INTER_CUBIC", '../couro_images'))
    cria_Arquivo_GLCM((float(i)/100),4,"INTER_LANCZOS4", '../couro_images')
    
