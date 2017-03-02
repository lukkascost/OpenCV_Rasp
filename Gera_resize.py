import thread
from Metodos import *
percent = 90


thread.start_new_thread( cria_Arquivo_GLCM, (0.01,) )
thread.start_new_thread( cria_Arquivo_GLCM, (0.02,) )

thread.start_new_thread( cria_Arquivo_GLCM, (0.03,) )
thread.start_new_thread( cria_Arquivo_GLCM, (0.04,) )

thread.start_new_thread( cria_Arquivo_GLCM, (0.05,) )
thread.start_new_thread( cria_Arquivo_GLCM, (0.06,) )

thread.start_new_thread( cria_Arquivo_GLCM, (0.07,) )
thread.start_new_thread( cria_Arquivo_GLCM, (0.08,) )

thread.start_new_thread( cria_Arquivo_GLCM, (0.09,) )
thread.start_new_thread( cria_Arquivo_GLCM, (0.11,) )
