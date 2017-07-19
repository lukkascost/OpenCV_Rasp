import cv2
import numpy as np
import math as mp
import subprocess

passos = [922]
valors = [[],[],[],[],[]]
for passo in passos:
        res = np.zeros(10)
        command = "python -m memory_profiler meminfo.py {:d}".format(passo)
        print "executando comando ... "
        resultado =  subprocess.check_output(command, shell=True)
        print resultado
        arquivo = open("MEMORIA/_{:03d}_PASSO_GLCM.txt".format(passo),'r')
        string = arquivo.read()
        string = string.replace(" ","-")
        string = string.split("\n")
        for i in string:
                i = i.split("-")
                if len(i)>5:
                        if i[4].isdigit():
                                digito = int(i[4])-22
                                if digito>=0 and digito <=10:
                                        res[digito] = float(i[10])
        valors[0].append(res[0])
        valors[1].append(res[2])
        valors[2].append(res[3])
        valors[3].append(res[4])
        valors[4].append(res[5]+res[6]+res[7])
        print valors
        


