import thread
from Metodos import *
percent = 90
lista = []
passos = []
for i in range(101,1000):
    if (3456/i,4608/i) not in lista:
        lista.append((3456/i,4608/i))
        passos.append(i)
passos.sort(reverse=True)
for i in passos:
    cria_Arquivo_GLCM(i,6,"PASSO_ROI_PRETO", '../../couro_images_semfundo',roi=True)
