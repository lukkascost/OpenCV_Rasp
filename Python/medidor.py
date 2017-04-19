import subprocess
from Metodos import *
de = 1
ate = 100
passo = 1
bateria = 1
qtdBaterias = 1
local = "RaspBerry"
importres = []
result = ""
##
print "Medindo RESIZE  ..... "
for j,i in enumerate(range(de,ate+1,passo)):
	print "\tPasso: ",i
	percent = 3456.0/float(i)
	percent /= 3456.0
	percent *= 100.0
	result += "--------- {:04.03f}% da imagem passo {:03d}\n".format(percent,i)
	command = " python -m timeit -n {:d} -r {:d}".format(bateria, qtdBaterias)
	command += ' "from Metodos import *"'
	command += ' "resize_img_passo(cv2.imread('
	command += "'DataBase/c1_1.JPG',0),"+str(i)+")"
	command += '"'
	result += command +"\n"
	importres.append(subprocess.check_output(command, shell=True)+" "+str(i))
	result += "\t\t"+importres[j]
	result += "\n"
Salvar_texto(result,"../RESULTADOS/tempos_{}_RESIZE.txt".format(local))
texto = ""
for i in importres:
	texto+= str(i.split(" ")[5])+";"
	texto+= str(i.split(" ")[6])+";"
	texto+= str(i.split(" ")[9])+";"
	texto+= "\n"
Salvar_texto(texto,"../RESULTADOS/import_tempos_{}_RESIZE.txt".format(local))
result = ""
importres = []
##
print "Medindo RESIZE + GLCM ..... "
for j,i in enumerate(range(de,ate+1,passo)):
	print "\tPasso: ",i
	percent = 3456.0/float(i)
	percent /= 3456.0
	percent *= 100.0
	result +=  "---------  {:04.03f}% da imagem passo {:03d}\n".format(percent,i)
	command = " python -m timeit -n {:d} -r {:d}".format(bateria, qtdBaterias)
	command += ' "from Metodos import *"'
	command += ' "GLCM(resize_img_passo(cv2.imread('
	command += "'DataBase/c1_1.JPG',0),"+str(i)+"),1.0)"
	command += '"'
	result +=  command +"\n"
	importres.append(subprocess.check_output(command, shell=True)+" "+str(i))
	result += "\t\t"+importres[j]
	result += "\n"
Salvar_texto(result,"../RESULTADOS/tempos_{}_RESIZE+GLCM.txt".format(local))
texto = ""
for i in importres:
	texto+= str(i.split(" ")[5])+";"
	texto+= str(i.split(" ")[6])+";"
	texto+= str(i.split(" ")[9])+";"
	texto+= "\n"
Salvar_texto(texto,"../RESULTADOS/import_tempos_{}_RESIZE+GLCM.txt".format(local))
importres = []
result = ""
##
print "Medindo RESIZE + GLCM + SVM ..... "
for j,i in enumerate(range(de,ate+1,passo)):
	print "\tPasso: ",i
	percent = 3456.0/float(i)
	percent /= 3456.0
	percent *= 100.0
	result  += "--------- {:04.03f}% da imagem passo {:03d}\n".format(percent,i)
	command = " python -m timeit -n {:d} -r {:d}".format(bateria, qtdBaterias)
	command += ' "from Metodos import *"'
	command += ' "atr = GLCM(resize_img_passo(cv2.imread('
	command += "'DataBase/c1_1.JPG',0),"+str(i)+"),1.0)[:10]"
	command += '"'
	command += ' "Vetores = cv2.SVM()"'
	command += ' "'
	command += "Vetores.load('DataBase/SVM_Vectors.txt')"
	command += '" '
	command += '"Vetores.predict(np.float32(atr))"'
	result += command +"\n"
	importres.append(subprocess.check_output(command, shell=True)+" "+str(i))
	result += "\t\t"+importres[j]
	result += "\n"
Salvar_texto(result,"../RESULTADOS/tempos_{}_RESIZE+GLCM+SVM.txt".format(local))
texto = ""
for i in importres:
	texto+= str(i.split(" ")[5])+";"
	texto+= str(i.split(" ")[6])+";"
	texto+= str(i.split(" ")[9])+";"
	texto+= "\n"
Salvar_texto(texto,"../RESULTADOS/import_tempos_{}_RESIZE+GLCM+SVM.txt".format(local))
importres = []
