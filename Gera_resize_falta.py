import thread
from Metodos import *
percent = 90



thread.start_new_thread( cria_Arquivo_GLCM, (0.11,2,"INTER_AREA"))
thread.start_new_thread( cria_Arquivo_GLCM, (0.14,4,"INTER_LANCZOS4"))
thread.start_new_thread( cria_Arquivo_GLCM, (0.21,4,"INTER_LANCZOS4"))
thread.start_new_thread( cria_Arquivo_GLCM, (0.15,0,"INTER_NEAREST"))
thread.start_new_thread( cria_Arquivo_GLCM, (0.21,0,"INTER_NEAREST"))
thread.start_new_thread( cria_Arquivo_GLCM, (0.22,0,"INTER_NEAREST"))

