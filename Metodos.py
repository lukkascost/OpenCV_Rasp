## SVM - OpenCV 2.4.13
import cv2
import numpy as np
import math as mp

## retorna o numero de objetos e o numero de atributos do arquivo MomCent padronizado.
def GetObjetosAtributos(ad):
	objetos = 0
	atributos = 0
	cont = -1.0
	file = open(ad,"r")
	objetos = len(file.readlines())
	file = open(ad,"r")
	atributos =  len(file.readline().split(","))
	return objetos, atributos-1
##Converte o arquivo em um banco de dados tipo MAT objetos x atributos
def PassaBancoDeDadosParaMat(ad):
		bd = []
		file = open(ad,"r")
		obj = 0
		for line in file:
			bd.append([])
			lines = line.split(",")
			atributos = 0
			for attr in lines:
				bd[obj].append(float(attr))
				atributos = atributos+1
			obj = obj+1
		return bd

## preenche uma matriz com os atributos e uma com a label de cada objeto
def AtribuirValoresMatrizes(bd,obj,atr):
	atributos = []
	labels = []
	for x in range(obj):
		labels.append([])
		atributos.append([])
		for y in range(atr):
			if (y== atr-1):
				labels[x].append(bd[x][y])
			else:
				atributos[x].append(bd[x][y])
	return atributos,labels

## Retorna a quatidade de objetos por classe.
def GetQuantidadeDeObjetosPorClasse(lb):
	NumObjPorClasses = []
	for x in range(int(max(lb)[0])+1):
		NumObjPorClasses.append(0.0)
		for y in range(len(lb)):
			if(int(lb[y][0]) == x):
				NumObjPorClasses[x] = NumObjPorClasses[x]+1
	return NumObjPorClasses


def leave_on_out(percentualTreino,percentualTeste,quantidadeDeClasses,NumObjPorClasse,atributos,objetos,label,atrib,Treino,Teste,TreinoLabel,TesteLabel):
	contadorTreino = -1
	contadorTeste = -1
	for controle in range(quantidadeDeClasses):
		contador = -1
		for y in range(objetos):
			if(int(label[y][0]) == controle):
				contador = contador +1
				if(contador<=int((NumObjPorClasse[controle] -1)*(percentualTreino/100))):
					contadorTreino = contadorTreino+1
					for xx in range(atributos+1):
						if (xx!=atributos):
							Treino[contadorTreino][xx] = atrib[y][xx]
						if (xx == atributos):
							TreinoLabel[contadorTreino][0] = label[y][0]
						#print "Classe - ",controle
						#print contador,"ATE",NumObjPorClasse[controle]
						##print "Treino - ",Treino[contadorTreino][xx]
				else:
					contadorTeste = contadorTeste+1
					for xx in range(atributos+1):
						if(xx!=atributos):
							Teste[contadorTeste][xx] =atrib[y][xx]
						if(xx==atributos):
							TesteLabel[contadorTeste][0] = label[y][0]
						#print "Classe - ",controle
						#print contador,"ATE",NumObjPorClasse[controle]
						##print "Treino - ",Treino[contadorTreino][xx]
	return percentualTreino, percentualTeste, quantidadeDeClasses, NumObjPorClasse, atributos, objetos, label, atrib, Treino, Teste, TreinoLabel, TesteLabel

def Normalizar(BancoDeDados,objetos,atributos):
	matNormalizar = np.zeros((atributos,2))
	for atrib in range(atributos):
		for obj in range(objetos):
			if (obj == 0):
				ma = BancoDeDados[obj][atrib]
				me = BancoDeDados[obj][atrib]
			else:
				if (ma<BancoDeDados[obj][atrib]):
					ma = BancoDeDados[obj][atrib]
				if (me > BancoDeDados[obj][atrib]):
					me = BancoDeDados[obj][atrib]
		matNormalizar[atrib][0] = me
		matNormalizar[atrib][1] = ma
	for atrib in range(atributos):
		for obj in range(objetos):
			BancoDeDados[obj][atrib] = (BancoDeDados[obj][atrib]-matNormalizar[atrib][0])/(matNormalizar[atrib][1]-matNormalizar[atrib][0])
	return BancoDeDados

def Salvar_arquivo(bd, address):
	arquivo = open(address,"w")
	for i in bd:
		for j in i:
			arquivo.write(str(j))
			arquivo.write(",")
		arquivo.write("\n")
	arquivo.close()

def Salvar_texto(text,address):
	arquivo = open(address,"w")
	arquivo.write(text)
	arquivo.close()

def ler_arquivo(address):
	arquivo = open(address,"r")
	bd = []
	obj = 0
	for line in arquivo:
		bd.append([])
		lines = line.split(",")
		for attr in lines:
			if(len(attr)>1): bd[obj].append(float(attr))
		obj = obj+1
	return bd


def getCoOccurrenceMatrix(image, grayscale):
    coOccurence = np.zeros((grayscale,grayscale))
    for i in range(len(image)):
        for j in range(len(image[0])-1):
            coOccurence[image[i][j]][image[i][j+1]]= coOccurence[image[i][j]][image[i][j+1]] +1
    return coOccurence 

def normalizeCoOccurrenceMatrix(coOccurence,imageQuantized, grayscale):
	coOccurenceNormalized = np.zeros((grayscale,grayscale))
	for i in range(grayscale):
		for j in range(grayscale):
			coOccurenceNormalized[i][j] = coOccurence[i][j]/(len(imageQuantized)*(len(imageQuantized[0]) -1)) 
	return coOccurenceNormalized
def getFeatures(coOccurenceNormalized, grayscale):
    glcm_features = np.zeros(10)
    correlation,mean1,mean2,deviation,deviation1,deviation2 = 0,0,0,0,0,0
    for i in range(grayscale):
        for j in range(grayscale):
            glcm_features[0] =glcm_features[0] + ( (i-j) * (i-j) * (coOccurenceNormalized[i][j]))
            glcm_features[2] =glcm_features[2] + (coOccurenceNormalized[i][j] * coOccurenceNormalized[i][j] )
            glcm_features[3] =glcm_features[3] + (( coOccurenceNormalized[i][j]) / ( 1+abs(i-j) ));
            if(i!=j):
                glcm_features[4]=glcm_features[4] + (coOccurenceNormalized[i][j] / (1 + (i-j)*(i-j)))
                glcm_features[6]=glcm_features[6] + (coOccurenceNormalized[i][j]*(abs(i-j)) )
            if(coOccurenceNormalized[i][j]!=0):
                glcm_features[5] =glcm_features[5] + (coOccurenceNormalized[i][j]*mp.log10(coOccurenceNormalized[i][j]))
            glcm_features[7] = glcm_features[7] +(coOccurenceNormalized[i][j]*coOccurenceNormalized[i][j])
            correlation = correlation + ( (i*j) * ( (coOccurenceNormalized[i][j]) ) )
            mean1 = mean1+(i * ( (coOccurenceNormalized[i][j]) ))
            mean2+= (j * ( (coOccurenceNormalized[i][j]) ))
            deviation1+= ( (i*i) * (coOccurenceNormalized[i][j]) )
            deviation2+= ( (j*j) * (coOccurenceNormalized[i][j]) )
    glcm_features[5] *= -1
    deviation1-=mean1*mean1
    deviation2-=mean2*mean2
    deviation1=mp.sqrt(deviation1)
    deviation2=mp.sqrt(deviation2)
    deviation=(deviation1*deviation2)
    if(deviation==0):
        deviation = 1
    glcm_features[1]=(correlation-(mean1*mean2))/deviation

    for i in range(grayscale):
        for j in range(grayscale):
            glcm_features[8] += ((i-(mean1+mean2)/2)*(i-(mean1+mean2)/2))*coOccurenceNormalized[i][j]
    return glcm_features

#print glcm_features

def cria_Arquivo_GLCM(percent):
    img = cv2.imread('../couro_images/c1_1.JPG',0)
    x = int(len(img)*percent)
    y = int(len(img[0])*percent)
    # Load an color image in grayscale
    bd = []
    for i in range(1,8):
        for j in range(1,51):
            print '../couro_images/c'+str(i)+'_'+str(j)+'.JPG', percent
            img = cv2.imread('../couro_images/c'+str(i)+'_'+str(j)+'.JPG',0)
            img = cv2.resize(img,(y,x))
            imgQuantized = img.copy()
            coOccurence = getCoOccurrenceMatrix(imgQuantized, 256)
            coOccurenceNormalized = normalizeCoOccurrenceMatrix(coOccurence,imgQuantized,256)
            glcm_features  = getFeatures(coOccurenceNormalized, 256)
            glcm_features[9] = float(i)
            bd.append(glcm_features)
    Salvar_arquivo(bd,"../OpenCV_Rasp/GLCM_RESIZE/GLCM_"+str(percent)+"%_X"+str(y)+"_Y"+str(x)+".txt")
