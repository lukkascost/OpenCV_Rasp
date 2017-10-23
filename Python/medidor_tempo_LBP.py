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
local = "RaspBerry_001-922"
importres = []
result = ""
att58 = "[1, 2, 3, 4, 5, 7, 8, 9, 13, 15, 16, 17, 25, 29, 31, 32, 33, 49, 57, 61, 63, 64, 65, 97, 113, 121, 125, 127, 128, 129, 130, 132, 136, 144, 160, 192, 193, 194, 196, 200, 208, 224, 225, 226, 228, 232, 240, 241, 242, 244, 248, 249, 250, 252, 253, 254, 255,256]"
#
print "Medindo LBP  ..... "
for j,i in enumerate(passos):
        print "\tPasso: ",i
        percent = 4000.0/float(i)
        percent /= 4000.0
        percent *= 100.0
        result += "--------- {:04.03f}% da imagem passo {:03d}\n".format(percent,i)
        command = " python -m timeit -n {:d} -r {:d}".format(bateria, qtdBaterias)
        command += ' "from Metodos import LBP_img, cv2"'
        command += ' "LBP_img(cv2.imread('
        command += "'../C++/Imagens_Leandro/{:03d}_passo.JPG',0),".format(i)+att58+")"
        command += '"'
        result += command +"\n"
        importres.append(subprocess.check_output(command, shell=True)+" "+str(i))
        result += "\t\t"+importres[j]
        result += "\n"
        print importres[j]
Salvar_texto(result,"../RESULTADOS/tempos_{}_LBP_Leandro.txt".format(local))
texto = ""
for i in importres:
        texto+= str(i.split(" ")[5])+";"
        texto+= str(i.split(" ")[6])+";"
        texto+= str(i.split(" ")[9])+";"
        texto+= "\n"
Salvar_texto(texto,"../RESULTADOS/import_tempos_{}_LBP_Leandro.txt".format(local))
result = ""
importres = []
###
#print "Medindo RESIZE + LBP ..... "
#for j,i in enumerate(passos):
        #print "\tPasso: ",i
        #percent = 3456.0/float(i)
        #percent /= 3456.0
        #percent *= 100.0
        #result +=  "---------  {:04.03f}% da imagem passo {:03d}\n".format(percent,i)
        #command = " python -m timeit -n {:d} -r {:d}".format(bateria, qtdBaterias)
        #command += ' "from Metodos import *"'
        #command += ' "LBP(resize_img_passo(cv2.imread('
        #command += "'DataBase/c1_1.JPG',0),"+str(i)+"))"
        #command += '"'
        #result +=  command +"\n"
        #importres.append(subprocess.check_output(command, shell=True)+" "+str(i))
        #result += "\t\t"+importres[j]
        #result += "\n"
        #print importres
#Salvar_texto(result,"../RESULTADOS/tempos_{}_RESIZE+LBP.txt".format(local))
#texto = ""
#for i in importres:
        #texto+= str(i.split(" ")[5])+";"
        #texto+= str(i.split(" ")[6])+";"
        #texto+= str(i.split(" ")[9])+";"
        #texto+= "\n"
        #print importres[j]
#Salvar_texto(texto,"../RESULTADOS/import_tempos_{}_RESIZE+LBP.txt".format(local))
#importres = []
#result = ""
###
#print "Medindo RESIZE + LBP + SVM ..... "
#for j,i in enumerate(passos):
        #print "\tPasso: ",i
        #percent = 3456.0/float(i)
        #percent /= 3456.0
        #percent *= 100.0
        #result  += "--------- {:04.03f}% da imagem passo {:03d}\n".format(percent,i)
        #command = " python -m timeit -n {:d} -r {:d}".format(bateria, qtdBaterias)
        #command += ' "from Metodos import *"'
        #command += ' "atr = LBP(resize_img_passo(cv2.imread('
        #command += "'DataBase/c1_1.JPG',0),"+str(i)+"))[0]"
        #command += '"'
        #command += ' "Vetores = cv2.SVM()"'
        #command += ' "'
        #command += "Vetores.load('DataBase/SVM_LBP_Vectors.txt')"
        #command += '" '
        #command += '"Vetores.predict(np.float32(atr))"'
        #result += command +"\n"
        #importres.append(subprocess.check_output(command, shell=True)+" "+str(i))
        #result += "\t\t"+importres[j]
        #result += "\n"
        #print importres[j]
#Salvar_texto(result,"../RESULTADOS/tempos_{}_RESIZE+LBP+SVM.txt".format(local))
#texto = ""
#for i in importres:
        #texto+= str(i.split(" ")[5])+";"
        #texto+= str(i.split(" ")[6])+";"
        #texto+= str(i.split(" ")[9])+";"
        #texto+= "\n"
#Salvar_texto(texto,"../RESULTADOS/import_tempos_{}_RESIZE+LBP+SVM.txt".format(local))
#importres = []
