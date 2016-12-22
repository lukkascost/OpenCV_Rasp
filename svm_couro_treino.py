import cv2
import numpy as np
from svm import *
def treinoClasse(classe,bd ,Treino,TreinoLabel,Teste,TesteLabel,label,qtdTreino):
    contador = 0
    for y in range(len(bd)):
            if(contador<qtdTreino):
                for xx in range(len(bd[0])-1):
                    Treino[contador][xx] = bd[y][xx]
                TreinoLabel[contador][0] = bd[y][-1]
            else:
                for xx in range(len(bd[0])-1):
                    Teste[contador-qtdTreino][xx] = bd[y][xx]
                TesteLabel[contador-qtdTreino] = bd[y][-1]
            contador = contador+1
    return  Treino,TreinoLabel,Teste,TesteLabel
def misturar_dados(bd):
    banco = []
    for x in range(50):
        banco.append(bd[x])
        banco.append(bd[x+50])
        banco.append(bd[x+100])
        banco.append(bd[x+150])
        banco.append(bd[x+200])
        banco.append(bd[x+250])
        banco.append(bd[x+300])
    return banco
address = "glcm.txt"
objetos, atributos =  GetObjetosAtributos(address)
BancoDeDados = PassaBancoDeDadosParaMat(address,objetos,atributos)
BancoDeDados = Normalizar(BancoDeDados,objetos,atributos)
BancoDeDados = misturar_dados(BancoDeDados)
GLCM_MIX = open("glcm_mix.txt","w")
for x in BancoDeDados:
    for y in x:
        if(x[-1] == y):
            GLCM_MIX.write(str(y)+"\n")
        else:
            GLCM_MIX.write(str(y)+",")
atrib , label = AtribuirValoresMatrizes(BancoDeDados,objetos,atributos+1)
quantidadeClasses = int(max(label)[0])+1
NumObjPorClasse = GetQuantidadeDeObjetosPorClasse(label)
melhores = np.zeros((8,1))
CS = np.zeros((8,1))
C = 0.0
certo =0.0

x = 1
perfeito = [[0.], [  57.14285714], [  71.42857143], [  85.71428571], [ 100.        ], [  71.42857143], [  85.71428571], [  62.5       ]]
while (x < 0):
    qtdTreino = 150
    qtdTreino = qtdTreino*2
    Treino = np.zeros((qtdTreino,atributos))
    TreinoLabel = np.zeros((qtdTreino,1))
    Teste = np.zeros((350-qtdTreino,atributos))
    TesteLabel = np.zeros((350-qtdTreino,1))
    Treino,TreinoLabel,Teste,TesteLabel = treinoClasse(2,BancoDeDados,Treino,TreinoLabel,Teste,TesteLabel,label,qtdTreino)
    svm_params = dict( kernel_type = cv2.SVM_LINEAR,degree = 1, svm_type = cv2.SVM_C_SVC,C=x, gamma = 0,nu = 0.0, p = 0.0, class_weights = None)
    svm2 = cv2.SVM()
    svm2.train(np.float32(Treino),np.float32(TreinoLabel),params=svm_params)
    acerto = np.zeros((8,1))
    erro = np.zeros((8,1))
    total = np.zeros((8,1))
    cont =0
    print "###################### gamma = ",x," ###########################"
    for tsample in range(len(Teste)):
        test_sample = np.float32(Teste[tsample])
        res = int(svm2.predict(test_sample))
        test = int(TesteLabel[tsample][0])
        total[test] = total[test]+1
        if(test!=res): erro[test] = erro[test] +1
        else:  acerto[res] = acerto[res] +1
    for i in range(1,8):
            print "Taxa de acerto classe",i, float((acerto[i]*100))/float(total[i])," Acertos:",acerto[i]," Erros:",erro[i]," Total:" ,total[i]
            if (float((acerto[i]*100))/float(total[i]) == float(perfeito[i][0])):
                cont = cont+1
    for i in range(1,8):
        if (float((acerto[i]*100))/float(total[i]) > float(melhores[i][0])):
            melhores[i] = float((acerto[i]*100))/float(total[i])
            CS[i] = x

    print "TOTAL:",float((sum(acerto)*100))/float(sum(total))
    if(cont>C):
        C = cont
        certo = x
    print C, certo , melhores,CS
    x = x + 0.2
