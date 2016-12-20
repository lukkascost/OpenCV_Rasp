## SVM - OpenCV 2.4.13
import cv2
import numpy as np
address ="DataBase/numbersDB/num_padronizado_MomCent_OpenCv.txt"
addressSave = "Desktop/DataBase/DataBase_Normalized.txt"

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
def PassaBancoDeDadosParaMat(objetos,atributos):
		bd = []
		file = open(address,"r")
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
		NumObjPorClasses.append(-1.0)
		for y in range(len(label)):
			if(int(label[y][0]) == x):
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
				if(contador<=int(NumObjPorClasse[controle]*(percentualTreino/100))):
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
	return perTreino, perTeste, quantidadeClasses, NumObjPorClasse, atributos, objetos, label, atrib, Treino, Teste, TreinoLabel, TesteLabel

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

## inicializa as variaveis com o numero de objetos e o numero de atributos.
objetos, atributos =  GetObjetosAtributos(address)
## Carrega o arquivo no Banco de dados no formato MAT
BancoDeDados = PassaBancoDeDadosParaMat(objetos,atributos)
## Nomaliza o banco de dados.
BancoDeDados = Normalizar(BancoDeDados,objetos,atributos)
## cria a partir do banco uma matriz com os atributos e uma somente com a label dos objetos
atrib , label = AtribuirValoresMatrizes(BancoDeDados,objetos,atributos+1)
## Atribui a quantidade de classes que existem.
quantidadeClasses = int(max(label)[0])+1
## Cria um vetor que guarda quantos objetos de cada classe existem. Num[0] = numero de objetos da classe 0
NumObjPorClasse = GetQuantidadeDeObjetosPorClasse(label)
## Informado pelo usuario: Percentual de Treino
perTreino = 90.0
## percentual de testes.
perTeste = 100.0 - perTreino
## criacao das matrizes de treino e testes
Treino = np.zeros((int(objetos*(perTreino/100)),atributos))
TreinoLabel = np.zeros((int(objetos*(perTreino/100)),1))
Teste = np.zeros((int(objetos*(perTreino/100)),atributos))
TesteLabel = np.zeros((int(objetos*(perTreino/100)),1))
## Aplica o metodo leave_on_out
perTreino, perTeste, quantidadeClasses, NumObjPorClasse, atributos, objetos, label, atrib, Treino, Teste, TreinoLabel, TesteLabel = leave_on_out(perTreino, perTeste, quantidadeClasses, NumObjPorClasse, atributos, objetos, label, atrib, Treino, Teste, TreinoLabel, TesteLabel)

## Uso da Biblioteca do SVM padrao do OpenCv.
#  kernel_type = SVM_LINEAR, SVM_RBF, SVM_POLY, SVM_SIGMOID.
svm_params = dict( kernel_type = cv2.SVM_LINEAR, svm_type = cv2.SVM_C_SVC,C=7, gamma=20 , nu = 0.0, p = 0.0, class_weights = None)
svm = cv2.SVM()
svm.train(np.float32(Treino),np.float32(TreinoLabel),params=svm_params)

acerto = 0
erro = 0
for tsample in range(int(objetos*(perTeste/100)-1)):
	test_sample = np.float32(Teste[tsample])
	res = int(svm.predict(test_sample))
	test = int(TesteLabel[tsample][0])

	if(test!=res): erro = erro +1
	else:  acerto = acerto +1
print "Taxa de acerto:", float((acerto*100))/float((acerto+erro))
