import thread
from Metodos import *
percent = 90
#for i in range(43,1,-1):
#        cria_Arquivo_GLCM(1,6,"PASSO_ROI_PRETO", '../../couro_images_semfundo',roi=True)
bd = []
for i in range(1,8):
    for j in range(1,51):
        bd.append(GLCM(cv2.imread("../../couro_images_semfundo/c{:d}_{:d}.JPG".format(i,j),0)))
        print i,j
Salvar_arquivo(bd,"GLCM_RESIZE/PASSO_ROI_PRETO/GLCM_100.txt")
