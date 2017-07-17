from Metodos import *
import subprocess

passos = []
lista = []
for i in range(1,1000):
        if (3456/i,4608/i) not in lista:
                lista.append((3456/i,4608/i))
                passos.append(i)
for i,j in enumerate(passos):
        print lista[i],passos[i]
passos = [11,33,34,68,69,105,108,165,171,922]
passos.sort(reverse=1)
for i in passos:
        resultado = []
        resultado2 = []              
        for j in range(10):  
                command = " python -m timeit -n {:d} -r {:d}".format(1, 1)
                command += ' "from Metodos import GLCM_tipo1,resize_img_passo"'
                command += ' "import cv2"'
                command += ' "GLCM_tipo1(cv2.imread('
                command += "'../C++/Imagens/{:03d}_passo.JPG',0),1.0)".format(i)
                command += '"'
                resultado.append(float(subprocess.check_output(command, shell=True).split(" ")[5]))
                command = " python -m timeit -n {:d} -r {:d}".format(1, 1)
                command += ' "from Metodos import GLCM_tipo2,resize_img_passo"'
                command += ' "import cv2"'
                command += ' "GLCM_tipo2(cv2.imread('
                command += "'../C++/Imagens/{:03d}_passo.JPG',0),1.0)".format(i)
                command += '"'
                resultado2.append(float(subprocess.check_output(command, shell=True).split(" ")[5]))
                #print resultado
                print resultado,resultado2
                print np.average(resultado), np.average(resultado2), i,j
                Salvar_texto(str(resultado), "../RESULTADOS/time_GLCM_{}_lucas10.txt".format(i))
                Salvar_texto(str(resultado2), "../RESULTADOS/time_GLCM_{}_CFS.txt".format(i))        

