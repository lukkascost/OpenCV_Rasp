import thread
from Metodos import *
percent = 90

for i in range(72,101):
    cria_Arquivo_GLCM((float(i)/100),4,"INTER_LANCZOS4")
