import subprocess
from Classes import *

def timeit_msec(command):
        resultado =  subprocess.check_output(command, shell=True).split(" ")
        if resultado[6] == "usec":
                return float(resultado[5])/1000
        if resultado[6] == "sec":
                return float(resultado[5])*1000    
        if resultado[6] == "msec":
                return float(resultado[5])        
        return None

def getFeatures2(coOccurenceNormalized, gray):
        glcm_atributes = np.zeros(25,dtype=np.float64)  
        for i in range(gray):       
                for j in range(gray):
                        ij = coOccurenceNormalized[i,j]
                        glcm_atributes[1]  += ij*ij
                        glcm_atributes[2]  += ((i-j)*(i-j) * (ij))
                        glcm_atributes[5]  += (ij)/(1+((i-j)*(i-j)))
                        glcm_atributes[9]  += ij* np.log10(ij+ 1e-30)                        
                        glcm_atributes[15] += (ij)/(1+abs(i-j))
                        glcm_atributes[16] += ij*(i+j)
                        glcm_atributes[21] += ij*abs(i-j)
                        glcm_atributes[22] += ij*(i-j)
                        glcm_atributes[23] += ij*i*j
        glcm_atributes[17] = np.amax(coOccurenceNormalized)
        glcm_atributes[16] /= 2
        glcm_atributes[22] /= 2
        return glcm_atributes[1:] 



#bateria = 1
#qtdBaterias = 1
#lista = []
#passos = []
#for i in range(1,1000):
        #if (4000/i,3000/i) not in lista:
                #lista.append((4000/i,3000/i))
                #passos.append(i)
#passos.sort(reverse=False)
#local = "RaspBerry_001-922"
#importres = []
#result = ""
att58 = "[1, 2, 3, 4, 5, 7, 8, 9, 13, 15, 16, 17, 25, 29, 31, 32, 33, 49, 57, 61, 63, 64, 65, 97, 113, 121, 125, 127, 128, 129, 130, 132, 136, 144, 160, 192, 193, 194, 196, 200, 208, 224, 225, 226, 228, 232, 240, 241, 242, 244, 248, 249, 250, 252, 253, 254, 255,256]"
##
#print "Medindo LBP  ..... "
#for j,i in enumerate(passos):
        #print "\tPasso: ",i
        #percent = 4000.0/float(i)
        #percent /= 4000.0
        #percent *= 100.0
        #result += "--------- {:04.03f}% da imagem passo {:03d}\n".format(percent,i)
        #command = " python -m timeit -n {:d} -r {:d}".format(bateria, qtdBaterias)
        #command += ' "from Metodos import LBP_img, cv2"'
        #command += ' "LBP_img(cv2.imread('
        #command += "'../C++/Imagens_Leandro/{:03d}_passo.JPG',0),".format(i)+att58+")"
        #command += '"'
        #result += command +"\n"
        #importres.append(subprocess.check_output(command, shell=True)+" "+str(i))
        #result += "\t\t"+importres[j]
        #result += "\n"
        #print importres[j]
#Salvar_texto(result,"../RESULTADOS/tempos_{}_LBP_Leandro.txt".format(local))
#texto = ""
#for i in importres:
        #texto+= str(i.split(" ")[5])+";"
        #texto+= str(i.split(" ")[6])+";"
        #texto+= str(i.split(" ")[9])+";"
        #texto+= "\n"
#Salvar_texto(texto,"../RESULTADOS/import_tempos_{}_LBP_Leandro.txt".format(local))
#result = ""
#importres = []
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

stri = []
stri.append("Label:\t")
stri.append("Carregar Imagem:\t")
stri.append("Extrair caracteristicas:\t")
stri.append("Classificacao:\t")
stri.append("")
stri.append("")

        
for i in [98, 50, 38, 10, 1]:
        cmd1 = []
        cmd2 = []
        cmd3 = [] 
        cmd4 = []
        cmd5 = []
        for j in range(1):
                ##Carregar Imagem:
                command = " python -m timeit -n {:d} -r {:d} -t".format(5, 5)
                command += ' "from Metodos import np,cv2,LBP_img"'
                command += ' "cv2.imread('
                command += "'../C++/Imagens_Leandro/{:03d}_passo.JPG',0)".format(i)
                command += '"'        
                cmd1.append(timeit_msec(command))
                print cmd1
                ##Extrair as caracteristicas               
                command = " python -m timeit -n {:d} -r {:d} -t".format(1, 1)
                command += ' "from Metodos import np,cv2,LBP_img"'
                command += ' "img = cv2.imread('
                command += "'../C++/Imagens_Leandro/{:03d}_passo.JPG',0)".format(i)
                command += '"' 
                command += ' "LBP_img(img,'+att58+')"'
                cmd2.append(timeit_msec(command))
                print cmd2
                ##Classificacao               
                command = " python -m timeit -n {:d} -r {:d} -t".format(5, 5)
                command += ' "from Metodos import np,cv2,LBP_img"'
                command += ' "svm = cv2.SVM()"' 
                command += ' "svm.load(' + "'DataBase/SVM_Vectors.txt')" +'"'
                command += ' "svm.predict(np.float32([1,2,3,4,5,6,7,8,9,10]))"'
                cmd3.append(timeit_msec(command))    
        stri[0] += "M={:03d}\t".format(i)
        stri[1] += "{:05.02f}\t".format(np.average(cmd1))
        stri[2] += "{:05.02f}\t".format(np.average(cmd2)-np.average(cmd1))
        stri[3] += "{:05.02f}\t".format(np.average(cmd3))
        for ki in stri:
                print ki  
