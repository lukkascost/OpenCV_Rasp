import os 
## g++  biblioteca.cpp -o biblioteca -lopencv_core -lopencv_imgproc -lopencv_highgui -lopencv_ml
## COMANDO PARA O TEMPO DO GLCM DE UMA IMAGEM POR DECIMACAO:
command = ""
for i in range(5,101,5):
	percent = 3456.0/float(i)
	percent /= 3456.0
	percent *= 100.0
	command += "g++ GLCM{:03d}.cpp -o GLCM{:03d} -lopencv_core -lopencv_imgproc -lopencv_highgui -lopencv_ml\n".format(i,i)
os.system(command)
command = ""
for i in range(5,101,5):
    command+= "./GLCM{:03d}\n".format(i)
os.system(command)
command = "size"
for i in range(5,101,5):
    command += " GLCM{:03d}".format(i)
os.system(command)
