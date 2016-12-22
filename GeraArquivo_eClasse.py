import cv2
import numpy as np
address = "glcm_mix.txt"
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

def retirarAtrLab(bd,classe):
    treino = bd[:10]
    label = bd[-1]
    if (label!=classe and 0 == 1):
        label = 0
    return treino,label

def AtribuirClasses(bd, classe):
    Treino = np.zeros((300,10))
    Teste = np.zeros((50,10))
    TreinoLabel =np.zeros((300,1))
    TesteLabel = np.zeros((50,1))
    contadorClasse = 0
    contadorTeste = 0
    for i in range(300):
        Treino[i], TreinoLabel[i] = retirarAtrLab(bd[i],  classe)

    for i in range(50):
        Teste[i], TesteLabel[i] = retirarAtrLab(bd[300+i],classe)

    return Treino, TreinoLabel, Teste, TesteLabel

#classe 1
BancoDeDados = PassaBancoDeDadosParaMat(address)
BancoDeDados = Normalizar(BancoDeDados,len(BancoDeDados),len(BancoDeDados[0])-1)
Treino, TreinoLabel, Teste, TesteLabel = AtribuirClasses(BancoDeDados, 1)
svm_params = dict( kernel_type = cv2.SVM_LINEAR, svm_type = cv2.SVM_C_SVC,C=422.8,degree =1, gamma=20 , nu = 0.0, p = 0.0, class_weights = None)
svm = cv2.SVM()
svm.train(np.float32(Treino),np.float32(TreinoLabel),params=svm_params)
acerto = 0
erro = 0
for tsample in range(len(Teste)):
    test_sample = np.float32(Teste[tsample])
    res = int(svm.predict(test_sample))
    test = int(TesteLabel[tsample][0])
    print res,test
    if(test!=res): erro = erro +1
    else: acerto = acerto +1
print "Taxa de acerto:", float((acerto*100))/float((acerto+erro)), acerto,erro
