import os 

## COMANDO PARA O TEMPO DO GLCM DE UMA IMAGEM POR DECIMACAO:
for i in range(5,101,5):
	percent = 3456.0/float(i)
	percent /= 3456.0
	percent *= 100.0
	print "{:04.03f}% da imagem passo {:03d}".format(percent,i)
	command = " python -m timeit -n 1 -r 2"
	command += ' "from Metodos import *"'
	command += ' "GLCM(resize_img_passo(cv2.imread('
	command += "'DataBase/c1_1.JPG',0),"+str(i)+"),1.0)"
	command += '"'
	print command
	os.system(command)
