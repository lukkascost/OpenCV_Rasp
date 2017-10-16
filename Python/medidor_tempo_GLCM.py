import subprocess
from Metodos import *
bateria = 1
qtdBaterias = 1
lista = []
passos = []
for i in range(1,1000):
        if (4000/i,3000/i) not in lista:
                lista.append((4000/i,3000/i))
                passos.append(i)
passos.sort(reverse=False)
local = "RaspBerry_001-1000"
importres = []
result = ""
#
print "Medindo LBP  ..... "
for j,i in enumerate(passos):
        print "\tPasso: ",i
        percent = 4000.0/float(i)
        percent /= 4000.0
        percent *= 100.0
        result += "--------- {:04.03f}% da imagem passo {:03d}\n".format(percent,i)
        command = " python -m timeit -n {:d} -r {:d}".format(bateria, qtdBaterias)
        command += ' "from Metodos import GLCM_tipo1, cv2"'
        command += ' "GLCM_tipo1(cv2.imread('
        command += "'../C++/Imagens_Leandro/{:03d}_passo.JPG',0),".format(i)+"1.0)"
        command += '"'
        result += command +"\n"
        importres.append(subprocess.check_output(command, shell=True)+" "+str(i))
        result += "\t\t"+importres[j]
        result += "\n"
        print importres[j]
Salvar_texto(result,"../RESULTADOS/tempos_{}_GLCM10_LEANDRO.txt".format(local))
texto = ""
for i in importres:
        texto+= str(i.split(" ")[5])+";"
        texto+= str(i.split(" ")[6])+";"
        texto+= str(i.split(" ")[9])+";"
        texto+= "\n"
Salvar_texto(texto,"../RESULTADOS/import_tempos_{}_GLCM10_LEANDRO.txt".format(local))
result = ""
importres = []
