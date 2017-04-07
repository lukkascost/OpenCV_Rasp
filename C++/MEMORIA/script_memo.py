import os 
## g++  biblioteca.cpp -o biblioteca -lopencv_core -lopencv_imgproc -lopencv_highgui -lopencv_ml
## COMANDO PARA O TEMPO DO GLCM DE UMA IMAGEM POR DECIMACAO:
command = ""
ate = 6
for i in range(0,ate,5):
	command = "g++ GLCM{:03d}.cpp -S -lopencv_core -lopencv_imgproc -lopencv_highgui -lopencv_ml\nsize a.out".format(i,i)
	os.system(command)
