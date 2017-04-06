import os 

## COMANDO PARA O TEMPO DO GLCM DE UMA IMAGEM POR DECIMACAO:
for i in range(5,101,5):
	percent = 3456.0/float(i)
	percent /= 3456.0
	percent *= 100.0
#	print "{:04.03f}% da imagem passo {:03d}".format(percent,i)
	command = " python -m timeit -n 50 -r 2"
	command += ' "from Metodos import *"'
	command += ' "GLCM(resize_img_passo(cv2.imread('
	command += "'DataBase/c1_1.JPG',0),"+str(i)+"),1.0)"
	command += '"'
#	print command
#	os.system(command)

## COMANDO PARA O TEMPO DO RESIZE DE UMA IMAGEM POR DECIMACAO:
for i in range(5,101,5):
	percent = 3456.0/float(i)
	percent /= 3456.0
	percent *= 100.0
#	print "--------- {:04.03f}% da imagem passo {:03d}".format(percent,i)
	command = " python -m timeit -n 50 -r 2"
	command += ' "from Metodos import *"'
	command += ' "resize_img_passo(cv2.imread('
	command += "'DataBase/c1_1.JPG',0),"+str(i)+")"
	command += '"'
#	print command
#	os.system(command)

## COMANDO PARA O TEMPO DO RESIZE DE UMA IMAGEM POR DECIMACAO:
for i in range(5,101,5):
	percent = 3456.0/float(i)
	percent /= 3456.0
	percent *= 100.0
	print "--------- {:04.03f}% da imagem passo {:03d}".format(percent,i)
	command = " python -m timeit -n 5 -r 5"
	command += ' "from Metodos import *"'
	command += ' "atr = GLCM(resize_img_passo(cv2.imread('
	command += "'DataBase/c1_1.JPG',0),"+str(i)+"),1.0)[:10]"
	command += '"'
	command += ' "Vetores = cv2.SVM()"'
	command += ' "'
	command += "Vetores.load('DataBase/SVM_Vectors.txt')"
	command += '" '
	command += '"Vetores.predict(np.float32(atr))"'
	print command
	os.system(command)
