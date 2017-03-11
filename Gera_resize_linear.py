import thread
from Metodos import *
percent = 90

for i in range(40,101):
    thread.start_new_thread( cria_Arquivo_GLCM, ((float(i)/100),0,"INTER_NEAREST"))
    thread.start_new_thread( cria_Arquivo_GLCM, ((float(i)/100),2,"INTER_AREA"))
    thread.start_new_thread( cria_Arquivo_GLCM, ((float(i)/100),3,"INTER_CUBIC"))
    cria_Arquivo_GLCM((float(i)/100),4,"INTER_LANCZOS4")
