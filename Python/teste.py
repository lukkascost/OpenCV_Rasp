from Metodos import *
import subprocess

passos = []
lista = []
for i in range(1,1000):
        if (3456/i,4608/i) not in lista:
                lista.append((3456/i,4608/i))
                passos.append(i)
passos = [11,33,34,68,69,105,108,165,171,922]
passos.sort(reverse=0)
valors = np.zeros((10,10))
stri = ""
for i,j in enumerate(passos):
        arquivo = open("../RESULTADOS/time_GLCM_{}_lucas10.txt".format(j),"r")
        linha = arquivo.readline()[1:]
        linha = linha[:-1].split(",")
        for l,k in enumerate(linha):
                valors[i,l] = float(k)
        stri+= str((3456/j,4608/j))+"\t"
        print (3456/j,4608/j), j
print stri
medias = []
stri = ""
for i in valors:
        stri+= "{:03.04f}\t".format(np.average(i))
print stri

valors = np.zeros((10,10))
stri = ""
for i,j in enumerate(passos):
        arquivo = open("../RESULTADOS/time_GLCM_{}_CFS.txt".format(j),"r")
        linha = arquivo.readline()[1:]
        linha = linha[:-1].split(",")
        for l,k in enumerate(linha):
                valors[i,l] = float(k)
        stri+= str((3456/j,4608/j))+"\t"
        print (3456/j,4608/j), j
print stri
medias = []
stri = ""
for i in valors:
        stri+= "{:03.04f}\t".format(np.average(i))
print stri


#from Classes import *
#positions = [x for x in range(1,25)]
#obj = rodada(50,7,nAtrib=24)
#obj = obj.load("OBJETOS/{:02d}-{}-{:03d}%-{:03d}Iteracoes_7C3T.pkl".format(02,positions,1,50))
#obj.execIteractions([1,3,5,14])
#print obj.get_avg_acc()[0][7] , obj.get_std_acc()[7] , [1,3,5,14]
#obj.execIteractions(positions)
#print obj.get_avg_acc()[0][7] , obj.get_std_acc()[7] , positions
#obj.execIteractions([1,3,10,14,17,20,22])
#print obj.get_avg_acc()[0][7] , obj.get_std_acc()[7] , [1,3,10,14,17,20,22]
#obj.execIteractions([1,2,5,9,15,16,17,21,22,23])
#print obj.get_avg_acc()[0][7] , obj.get_std_acc()[7] , [1,2,5,9,15,17,16,21,22,23]
