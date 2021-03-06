## SVM - OpenCV 2.4.13
import cv2
import numpy as np
import math as mp
import random
from Classes import *
#import matplotlib.pyplot as plt
#####################################################################################################################################################################################################
## retorna o numero de objetos e o numero de atributos do arquivo MomCent padronizado.
def GetObjetosAtributos(ad):
	objetos = 0                                     ##
	atributos = 0                                   ##
	file = open(ad,"r")                             ##
	objetos = len(file.readlines())                 ##
	file = open(ad,"r")                             ##
	atributos =  len(file.readline().split(","))    ##
	return objetos, atributos-1                     ##
#####################################################################################################################################################################################################
##Converte o arquivo em um banco de dados tipo MAT objetos x atributos
def PassaBancoDeDadosParaMat(ad):
		bd = []                                         ##
		file = open(ad,"r")                             ##
		obj = 0                                         ##
		for line in file:                               ##
			bd.append([])                           ##
			lines = line.split(",")                 ##
			atributos = 0                           ##
			for attr in lines:                      ##
				bd[obj].append(float(attr))     ##
				atributos = atributos+1         ##
			obj = obj+1                             ##
		return bd                                       ##
#####################################################################################################################################################################################################
## preenche uma matriz com os atributos e uma com a label de cada objeto
def AtribuirValoresMatrizes(bd,obj,atr):
	atributos = []                                          ##
	labels = []                                             ##
	for x in range(obj):                                    ##
		labels.append([])                               ##
		atributos.append([])                            ##
		for y in range(atr):                            ##
			if (y== atr-1):                         ##
				labels[x].append(bd[x][y])      ##
			else:                                   ##
				atributos[x].append(bd[x][y])   ##
	return atributos,labels                                 ##
#####################################################################################################################################################################################################
## Retorna a quatidade de objetos por classe.
def GetQuantidadeDeObjetosPorClasse(lb):
	NumObjPorClasses = []                                                   ##
	for x in range(int(max(lb)[0])+1):                                      ##
		NumObjPorClasses.append(0.0)                                    ##
		for y in range(len(lb)):                                        ##
			if(int(lb[y][0]) == x):                                 ##
				NumObjPorClasses[x] = NumObjPorClasses[x]+1     ##
	return NumObjPorClasses                                                 ##
#####################################################################################################################################################################################################
##
def leave_on_out(percentualTreino,percentualTeste,quantidadeDeClasses,NumObjPorClasse,atributos,objetos,label,atrib,Treino,Teste,TreinoLabel,TesteLabel):
	contadorTreino = -1                                                                                     ##
	contadorTeste = -1                                                                                      ##
	for controle in range(quantidadeDeClasses):                                                             ##
		contador = -1                                                                                   ##
		for y in range(objetos):                                                                        ##
			if(int(label[y][0]) == controle):                                                       ##
				contador = contador +1                                                          ##
				if(contador<=int((NumObjPorClasse[controle] -1)*(percentualTreino/100))):       ##
					contadorTreino = contadorTreino+1                                       ##
					for xx in range(atributos+1):                                           ##
						if (xx!=atributos):                                             ##
							Treino[contadorTreino][xx] = atrib[y][xx]               ##
						if (xx == atributos):                                           ##
							TreinoLabel[contadorTreino][0] = label[y][0]            ##
				else:                                                                           ##
					contadorTeste = contadorTeste+1                                         ##
					for xx in range(atributos+1):                                           ##
						if(xx!=atributos):                                              ##
							Teste[contadorTeste][xx] =atrib[y][xx]                  ##       
						if(xx==atributos):                                              ##
							TesteLabel[contadorTeste][0] = label[y][0]              ##
	return percentualTreino, percentualTeste, quantidadeDeClasses, NumObjPorClasse, atributos, objetos, label, atrib, Treino, Teste, TreinoLabel, TesteLabel
#####################################################################################################################################################################################################
##
def Normalizar(BancoDeDados,objetos,atributos):
	matNormalizar = np.zeros((atributos,2))                         ##
	for atrib in range(atributos):                                  ##
		for obj in range(objetos):                              ##
			if (obj == 0):                                  ##
				ma = BancoDeDados[obj][atrib]           ##
				me = BancoDeDados[obj][atrib]           ##
			else:                                           ##
				if (ma<BancoDeDados[obj][atrib]):       ##
					ma = BancoDeDados[obj][atrib]   ##
				if (me > BancoDeDados[obj][atrib]):     ##
					me = BancoDeDados[obj][atrib]   ##
		matNormalizar[atrib][0] = me                            ##
		matNormalizar[atrib][1] = ma                            ##
	for atrib in range(atributos):                                  ##
		for obj in range(objetos):                              ##
			BancoDeDados[obj][atrib] = (BancoDeDados[obj][atrib]-matNormalizar[atrib][0])/(matNormalizar[atrib][1]-matNormalizar[atrib][0]) ##
	return BancoDeDados                                             ##
#####################################################################################################################################################################################################
##
def Salvar_arquivo(bd, address):                
	arquivo = open(address,"w")             ##
	for i in bd:                            ##
		for j in i:                     ##
			arquivo.write(str(j))   ##
			arquivo.write(",")      ##
		arquivo.write("\n")             ##
	arquivo.close()                         ##
#####################################################################################################################################################################################################
##
def Salvar_texto(text,address):                 
	arquivo = open(address,"w")             ##
	arquivo.write(text)                     ##
	arquivo.close()                         ##
#####################################################################################################################################################################################################
##
def ler_arquivo(address):                                               
	arquivo = open(address,"r")                                     ##
	bd = []                                                         ##
	obj = 0                                                         ##
	for line in arquivo:                                            ##
		bd.append([])                                           ##
		lines = line.split(",")                                 ##
		for attr in lines:                                      ##
			if(len(attr)>1): bd[obj].append(float(attr))    ##
		obj = obj+1                                             ##
	return bd                                                       ##
#####################################################################################################################################################################################################
##
def getCoOccurrenceMatrix(image, grayscale):
    coOccurence = np.zeros((grayscale,grayscale))                                               ##
    for i in range(image.shape[0]):                                                             ##
        for j in range(image.shape[1]-1):                                                       ##
                coOccurence[image[i,j],image[i,j+1]] += 1                                       ##
    return coOccurence                                                                          ##
#####################################################################################################################################################################################################
##
def normalizeCoOccurrenceMatrix(coOccurence,imageQuantized, grayscale):
	coOccurenceNormalized = np.zeros((grayscale,grayscale))                                                                 ##
	for i in range(grayscale):                                                                                              ##
		for j in range(grayscale):                                                                                      ##
			coOccurenceNormalized[i,j] = coOccurence[i,j]/(imageQuantized.shape[0]*(imageQuantized.shape[1] -1))    ##
	return coOccurenceNormalized                                                                                            ##
#####################################################################################################################################################################################################
##
def getFeatures(coOccurenceNormalized, grayscale):
    glcm_features = np.zeros(10)                                                                                                ##
    correlation,mean1,mean2,deviation,deviation1,deviation2 = 0,0,0,0,0,0                                                       ##
    for i in range(grayscale):                                                                                                  ##
        for j in range(grayscale):                                                                                              ##
            glcm_features[0] =glcm_features[0] + ( (i-j) * (i-j) * (coOccurenceNormalized[i,j]))                                ##
            glcm_features[2] =glcm_features[2] + (coOccurenceNormalized[i,j] * coOccurenceNormalized[i,j] )                     ##
            glcm_features[3] =glcm_features[3] + (( coOccurenceNormalized[i,j]) / ( 1+abs(i-j) ));                              ##
            if(i!=j):                                                                                                           ##
                glcm_features[4]=glcm_features[4] + (coOccurenceNormalized[i,j] / (1 + (i-j)*(i-j)))                            ##
                glcm_features[6]=glcm_features[6] + (coOccurenceNormalized[i,j]*(abs(i-j)) )                                    ##
            if(coOccurenceNormalized[i,j]!=0):                                                                                  ##
                glcm_features[5] =glcm_features[5] + (coOccurenceNormalized[i,j]*mp.log10(coOccurenceNormalized[i,j]))          ##
            glcm_features[7] = glcm_features[7] +(coOccurenceNormalized[i,j]*coOccurenceNormalized[i,j])                        ##
            correlation = correlation + ( (i*j) * ( (coOccurenceNormalized[i,j]) ) )                                            ##
            mean1 = mean1+(i * ( (coOccurenceNormalized[i,j]) ))                                                                ##
            mean2+= (j * ( (coOccurenceNormalized[i,j]) ))                                                                      ##
            deviation1+= ( (i*i) * (coOccurenceNormalized[i,j]) )                                                               ##
            deviation2+= ( (j*j) * (coOccurenceNormalized[i,j]) )                                                               ##
    glcm_features[5] *= -1                                                                                                      ##
    deviation1-=mean1*mean1                                                                                                     ##
    deviation2-=mean2*mean2                                                                                                     ##
    deviation1=mp.sqrt(deviation1)                                                                                              ##
    deviation2=mp.sqrt(deviation2)                                                                                              ##
    deviation=(deviation1*deviation2)                                                                                           ##
    if(deviation==0):                                                                                                           ##
        deviation = 1                                                                                                           ##
    glcm_features[1]=(correlation-(mean1*mean2))/deviation                                                                      ##
    for i in range(grayscale):                                                                                                  ##
        for j in range(grayscale):                                                                                              ##
            glcm_features[8] += ((i-(mean1+mean2)/2)*(i-(mean1+mean2)/2))*coOccurenceNormalized[i,j]                            ##
    return glcm_features                                                                                                        ##
#####################################################################################################################################################################################################
##
def resize_img(img,i):
    x,y = img.shape
    yreal = int(y*(float(i)/100))
    xreal = int(x*(float(i)/100))
    saida = np.zeros((xreal,yreal))
    xmeu = 0
    ymeu = 0
    ix = 0
    laco = 0
    passo = int(x/xreal)+1
    inx = []
    iny = []
    while(xreal>xmeu):
        contador = 0+laco
        while(contador<x):
            if (xreal==xmeu):
                break
            xmeu+=1
            inx.append(contador)
            ix+=1
            contador += passo
        laco+=1
    laco = 0
    ix =0
    passo = int(y/yreal)+1
    while(yreal>ymeu):
        contador = 0+laco
        while(contador<y):
            if (yreal<ymeu):
                break
            ymeu+=1
            iny.append(contador)
            contador += passo
        laco+=1
    inx.sort()
    iny.sort()
    for j in range(xreal):
        for k in range(yreal):
            saida.itemset((j,k),img[inx[j]][iny[k]])
    return saida

def resize_img_passo(img,k):
        saida = []
        i = 0
        ci = 0
        while ci < img.shape[0]:
                cj = 0
                j = 0
                saida.append([])
                while cj<img.shape[1]:
                        saida[i].append(img[i*k][j*k])
                        cj+=k
                        j+=1
                ci+=k
                i +=1
        return np.matrix(saida)  
#####################################################################################################################################################################################################
##
def cria_Arquivo_GLCM(percent,method, text,caminho):
    img = cv2.imread(caminho+'/c1_1.JPG',0)
    x = int(len(img)*percent)
    y = int(len(img[0])*percent)
    # Load an color image in grayscale
    bd = []
    for i in range(1,8):
        for j in range(1,51):
            img = cv2.imread(caminho+'/c'+str(i)+'_'+str(j)+'.JPG',0)
            if(method ==0 ): img = cv2.resize(img,(y,x),interpolation = cv2.INTER_NEAREST)
            if(method ==1 ): img = cv2.resize(img,(y,x),interpolation = cv2.INTER_LINEAR)
            if(method ==2 ): img = cv2.resize(img,(y,x),interpolation = cv2.INTER_AREA)
            if(method ==3 ): img = cv2.resize(img,(y,x),interpolation = cv2.INTER_CUBIC )
            if(method ==4 ): img = cv2.resize(img,(y,x),interpolation = cv2.INTER_LANCZOS4 )
            if(method ==5 ): img = resize_img(img,percent*100)
            if(method ==6 ): img = resize_img_passo(img,percent)
            imgQuantized = img.copy()
            coOccurence = getCoOccurrenceMatrix(imgQuantized, 256)
            coOccurenceNormalized = normalizeCoOccurrenceMatrix(coOccurence,imgQuantized,256)
            glcm_features  = getFeatures(coOccurenceNormalized, 256)
            glcm_features[9] = float(i)
            bd.append(glcm_features)
            print glcm_features
            print caminho+'/c'+str(i)+'_'+str(j)+'.JPG', percent, text, img.shape
    Salvar_arquivo(bd,"GLCM_RESIZE/"+text+"/GLCM_"+str(percent*100)+".txt")
#####################################################################################################################################################################################################
##
def GLCM(img,classe):
        imgQuantized = img.copy()
        coOccurence = getCoOccurrenceMatrix(imgQuantized, 256)
        coOccurenceNormalized = normalizeCoOccurrenceMatrix(coOccurence,imgQuantized,256)
        glcm_features  = getFeatures(coOccurenceNormalized, 256)
        glcm_features[9] = classe
        return glcm_features
##################################################################################################################################################################################################### 
##
def memory():
    """
    Get node total memory and memory usage
    """
    with open('/proc/meminfo', 'r') as mem:
        ret = {}
        tmp = 0
        for i in mem:
            sline = i.split()
            if str(sline[0]) == 'MemTotal:':
                ret['total'] = int(sline[1])
            elif str(sline[0]) in ('MemFree:', 'Buffers:', 'Cached:'):
                tmp += int(sline[1])
        ret['free'] = tmp
        ret['used'] = int(ret['total']) - int(ret['free'])
    return ret
#####################################################################################################################################################################################################
##
def Train_extract(atributos,labels,fClass,qtdtreino,qtdTeste,Treino,TreinoLabel):
        while(qtdtreino>0):
                rd = ((qtdTeste+1)*fClass) + random.randint(0,qtdTeste+qtdtreino)
                Treino.append(atributos[rd])
                TreinoLabel.append(labels[rd])
                del atributos[rd]
                del labels[rd]
                qtdtreino -=1
        return atributos,labels,Treino,TreinoLabel
#####################################################################################################################################################################################################
##
def five_best_avg(mat):
    res = np.zeros((len(mat),1))
    for i in range(len(mat)):
        mat[i] = np.sort(mat[i])
        res[i,0] =  sum(mat[i][len(mat[i])-5:])/5
    return res
#####################################################################################################################################################################################################
##
def five_Worst_avg(mat):
    res = np.zeros((len(mat),1))
    for i in range(len(mat)):
        mat[i] = np.sort(mat[i])
        res[i,0] =  sum(mat[i][:5])/5
    return res
#####################################################################################################################################################################################################
##
def avg(l):
    res = np.zeros((len(l),1))                                          ##
    for i in range(len(l)):                                             ##
        res[i,0] = reduce(lambda x, y: x + y, l[i]) / len(l[i])         ##
    return res                                                          ##
#####################################################################################################################################################################################################
def geraGraficos(smetodo,inicio,tamanho,peso):
    objAr = [rodada(50,7) for i in range(100)]
    for metodo in smetodo:
        acc_ = []
        acc = []
        for percent in range(inicio,inicio+tamanho+1):
            objAr[percent] = objAr[percent].load("OBJETOS/{}-{:03d}%-{:03d}Iteracoes-PESOS_TIPO_{:02d}.pkl".format(metodo,percent,50,peso))
            acc_.append(objAr[percent].get_avg_acc()[1][7,0]*100)
            acc.append(objAr[percent].get_avg_acc()[0][7,0]*100)
        
        t = np.arange(inicio, inicio+tamanho+1, 1)
        plt.plot(t,acc_,label="Acuracia ++")
        plt.plot(t,acc,label="Acuracia")
        plt.ylim([0,100])
        plt.xlim([inicio,inicio+tamanho])

        plt.legend(bbox_to_anchor=(1, 1), bbox_transform=plt.gcf().transFigure)
        plt.xlabel('resize (%)')
        plt.ylabel('Pontos')
        plt.title("real_"+metodo)
        plt.grid(True)
        plt.savefig("GRAFICOS/{:02d} - {}-INICIO_{:03d}-TAMANHO_{:03d}_ACURACIAS.png".format(peso,metodo,inicio,tamanho),bbox_inches='tight',dpi=400)
        print "GRAFICOS/{:02d} - {}-INICIO_{:03d}-TAMANHO_{:03d}_ACURACIAS.png".format(peso,metodo,inicio,tamanho)
        ##plt.show()
        plt.gcf().clear()


