import thread
from Metodos import *
percent = 90


thread.start_new_thread( cria_Arquivo_GLCM, (0.1,) )
thread.start_new_thread( cria_Arquivo_GLCM, (0.2,) )

thread.start_new_thread( cria_Arquivo_GLCM, (0.3,) )
thread.start_new_thread( cria_Arquivo_GLCM, (0.4,) )

thread.start_new_thread( cria_Arquivo_GLCM, (0.5,) )
thread.start_new_thread( cria_Arquivo_GLCM, (0.6,) )

thread.start_new_thread( cria_Arquivo_GLCM, (0.7,) )
thread.start_new_thread( cria_Arquivo_GLCM, (0.8,) )

thread.start_new_thread( cria_Arquivo_GLCM, (0.9,) )
thread.start_new_thread( cria_Arquivo_GLCM, (1,) )
