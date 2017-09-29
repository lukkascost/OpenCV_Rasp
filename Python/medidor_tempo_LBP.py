import subprocess
from Metodos import *
bateria = 1
qtdBaterias = 1
lista = []
passos = []
for i in range(50,1000):
        if (3456/i,4608/i) not in lista:
                lista.append((3456/i,4608/i))
                passos.append(i)
passos.sort(reverse=False)
local = "RaspBerry_000-922"
importres = []
result = ""
##
#print "Medindo RESIZE  ..... "
#for j,i in enumerate(passos):
        #print "\tPasso: ",i
        #percent = 3456.0/float(i)
        #percent /= 3456.0
        #percent *= 100.0
        #result += "--------- {:04.03f}% da imagem passo {:03d}\n".format(percent,i)
        #command = " python -m timeit -n {:d} -r {:d}".format(bateria, qtdBaterias)
        #command += ' "from Metodos import *"'
        #command += ' "resize_img_passo(cv2.imread('
        #command += "'DataBase/c1_1.JPG',0),"+str(i)+")"
        #command += '"'
        #result += command +"\n"
        #importres.append(subprocess.check_output(command, shell=True)+" "+str(i))
        #result += "\t\t"+importres[j]
        #result += "\n"
        #print importres[j]
#Salvar_texto(result,"../RESULTADOS/tempos_{}_RESIZE.txt".format(local))
#texto = ""
#for i in importres:
        #texto+= str(i.split(" ")[5])+";"
        #texto+= str(i.split(" ")[6])+";"
        #texto+= str(i.split(" ")[9])+";"
        #texto+= "\n"
#Salvar_texto(texto,"../RESULTADOS/import_tempos_{}_RESIZE.txt".format(local))
#result = ""
#importres = []
###
print "Medindo RESIZE + LBP ..... "
for j,i in enumerate(passos):
        print "\tPasso: ",i
        percent = 3456.0/float(i)
        percent /= 3456.0
        percent *= 100.0
        result +=  "---------  {:04.03f}% da imagem passo {:03d}\n".format(percent,i)
        command = " python -m timeit -n {:d} -r {:d}".format(bateria, qtdBaterias)
        command += ' "from Metodos import *"'
        command += ' "LBP(resize_img_passo(cv2.imread('
        command += "'DataBase/c1_1.JPG',0),"+str(i)+"))"
        command += '"'
        result +=  command +"\n"
        importres.append(subprocess.check_output(command, shell=True)+" "+str(i))
        result += "\t\t"+importres[j]
        result += "\n"
        print importres
Salvar_texto(result,"../RESULTADOS/tempos_{}_RESIZE+LBP.txt".format(local))
texto = ""
for i in importres:
        texto+= str(i.split(" ")[5])+";"
        texto+= str(i.split(" ")[6])+";"
        texto+= str(i.split(" ")[9])+";"
        texto+= "\n"
        print importres[j]
Salvar_texto(texto,"../RESULTADOS/import_tempos_{}_RESIZE+LBP.txt".format(local))
importres = []
result = ""
##
print "Medindo RESIZE + LBP + SVM ..... "
for j,i in enumerate(passos):
        print "\tPasso: ",i
        percent = 3456.0/float(i)
        percent /= 3456.0
        percent *= 100.0
        result  += "--------- {:04.03f}% da imagem passo {:03d}\n".format(percent,i)
        command = " python -m timeit -n {:d} -r {:d}".format(bateria, qtdBaterias)
        command += ' "from Metodos import *"'
        command += ' "atr = LBP(resize_img_passo(cv2.imread('
        command += "'DataBase/c1_1.JPG',0),"+str(i)+"))[0]"
        command += '"'
        command += ' "Vetores = cv2.SVM()"'
        command += ' "'
        command += "Vetores.load('DataBase/SVM_LBP_Vectors.txt')"
        command += '" '
        command += '"Vetores.predict(np.float32(atr))"'
        result += command +"\n"
        importres.append(subprocess.check_output(command, shell=True)+" "+str(i))
        result += "\t\t"+importres[j]
        result += "\n"
        print importres[j]
Salvar_texto(result,"../RESULTADOS/tempos_{}_RESIZE+LBP+SVM.txt".format(local))
texto = ""
for i in importres:
        texto+= str(i.split(" ")[5])+";"
        texto+= str(i.split(" ")[6])+";"
        texto+= str(i.split(" ")[9])+";"
        texto+= "\n"
Salvar_texto(texto,"../RESULTADOS/import_tempos_{}_RESIZE+LBP+SVM.txt".format(local))
importres = []
