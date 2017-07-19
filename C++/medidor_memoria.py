import cv2
import numpy as np
import math as mp
import subprocess

passos = [100,50,10,1]
valors = [[],[],[],[],[]]
for passo in passos:
        continua = True
        while(continua):
                res = np.zeros(10)
                command = "python -m memory_profiler meminfo.py {:d}".format(passo)
                print "executando comando {} ... ".format(passo)
                resultado =  subprocess.check_output(command, shell=True)
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
                if res[0]!= 0 and 0 not in res[2:8]:
                        continua = False
        valors[0].append(res[0])
        valors[1].append(res[2])
        valors[2].append(res[3])
        valors[3].append(res[4])
        valors[4].append(res[5]+res[6]+res[7])
        for ki in valors:
                print ki
        print 
                
stri = ["","","","","",""]
for i in passos:
        stri[0]+= "{}\t".format((3456/i,4608/i))
for k,i in enumerate(valors):
        for val in i:
                stri[k+1] += "{:03.05f}\t".format(val)
for i in stri:
        print i
        

