from Classes import *
oAddress = "OBJETOS/"
vAddress = "VETORES/"
Metodo = "PASSO_DECIMACAO"

iteracoes = 50
qtdtreino = 37
qtdTeste = 49-qtdtreino

## tipo 01
PesosTipo = "01"
#Pesos de erro para calculo do Score_error
pesos = [[  0.   ,1.   ,2.   ,3.   ,4.   ,5.   ,6.],
         [  1.   ,0.   ,1.   ,2.   ,3.   ,4.   ,5.],
         [  2.   ,1.   ,0.   ,1.   ,2.   ,3.   ,4.],
         [  3.   ,2.   ,1.   ,0.   ,1.   ,2.   ,3.],
         [  4.   ,3.   ,2.   ,1.   ,0.   ,1.   ,2.],
         [  5.   ,4.   ,3.   ,2.   ,1.   ,0.   ,1.],
         [  6.   ,5.   ,4.   ,3.   ,2.   ,1.   ,0.]]
pesos = np.matrix(pesos);
########################################################################################################################################################

#Pesos de classe para calculo do Score_correct
pesosCorr = [7.   ,6.   ,5.   ,4.   ,3.   ,2.   ,1.]
########################################################################################################################################################

#### tipo 02
##PesosTipo = "02"
###Pesos de erro para calculo do Score_error
##pesos = [[  0.   ,15.  ,25.   ,45.   ,60.   ,80.   ,85.],
##         [  0.   ,0.   ,10.   ,20.   ,45.   ,65.   ,70.],
##         [  0.   ,0.   ,0.    ,20.   ,35.   ,55.   ,60.],
##         [  0.   ,0.   ,0.    ,0.    ,15.   ,35.   ,40.],
##         [  0.   ,0.   ,0.    ,0.    ,0.    ,20.   ,25.],
##         [  0.   ,0.   ,0.    ,0.    ,0.    ,0.    ,5.],
##         [  0.   ,0.   ,0.    ,0.    ,0.    ,0.    ,0.]]
##pesos = np.matrix(pesos);
##pesosPreco = [[100.   ,85.   ,75.    ,55.   ,40.   ,20.    ,15.],
##              [ 70.   ,85.   ,75.    ,55.   ,40.   ,20.    ,15.],
##              [ 50.   ,65.   ,75.    ,55.   ,40.   ,20.    ,15.],
##              [ 10.   ,25.   ,35.    ,55.   ,40.   ,20.    ,15.],
##              [-10.   ,-5.   ,5.     ,30.   ,40.   ,20.    ,15.],
##              [-60.   ,-45.  ,-35.   ,-15.  ,0.    ,20.    ,15.],
##              [-70.   ,-55.  ,-45.   ,-25.  ,-10.  ,10.   ,15.]]
##
##########################################################################################################################################################
##
###Pesos de classe para calculo do Score_correct
##pesosCorr = [100.   ,85.   ,75.   ,55.   ,40.   ,20.   ,15.]
##########################################################################################################################################################

for percent in range(3,4):
    obj = rodada(iteracoes,7)
    bd = ler_arquivo("GLCM_RESIZE/"+Metodo+"/GLCM_"+str(percent*100)+".txt")
    bd = Normalizar(bd,len(bd),len(bd[0])-1)    
    for it in range(iteracoes):
        oIt = iteracao(7,13)
        atributos = []
        labels = []
        TreinoLabel = []
        Treino = []
        for i in bd:
            atributos.append(i[:9])
            labels.append([i[-1]-1])
        ##Atributo da classe 0
        atributos,labels,Treino,TreinoLabel =  Train_extract(atributos,labels,0,qtdtreino,qtdTeste,Treino,TreinoLabel)
        ########################################################################################################################################################
        
        ##Atributo da classe 1
        atributos,labels,Treino,TreinoLabel =  Train_extract(atributos,labels,1,qtdtreino,qtdTeste,Treino,TreinoLabel)
        ########################################################################################################################################################
        
        ##Atributo da classe 2
        atributos,labels,Treino,TreinoLabel =  Train_extract(atributos,labels,2,qtdtreino,qtdTeste,Treino,TreinoLabel)
        ########################################################################################################################################################
        
        ##Atributo da classe 3
        atributos,labels,Treino,TreinoLabel =  Train_extract(atributos,labels,3,qtdtreino,qtdTeste,Treino,TreinoLabel)
        ########################################################################################################################################################
        
        ##Atributo da classe 4
        atributos,labels,Treino,TreinoLabel =  Train_extract(atributos,labels,4,qtdtreino,qtdTeste,Treino,TreinoLabel)
        ########################################################################################################################################################
        
        ##Atributo da classe 5
        atributos,labels,Treino,TreinoLabel =  Train_extract(atributos,labels,5,qtdtreino,qtdTeste,Treino,TreinoLabel)
        ########################################################################################################################################################
        
        ##Atributo da classe 6
        atributos,labels,Treino,TreinoLabel =  Train_extract(atributos,labels,6,qtdtreino,qtdTeste,Treino,TreinoLabel)
        ########################################################################################################################################################

        oIt.conj_treino = np.float32(np.matrix(Treino))
        oIt.conj_teste = np.matrix(atributos)
        oIt.conj_treino_label = np.float32(np.matrix(TreinoLabel))
        oIt.conj_teste_label = np.matrix(labels)
        oIt.svm_params = dict(kernel_type = cv2.SVM_RBF,
                svm_type = cv2.SVM_C_SVC,
                C=7.0,
                degree =1.0,
                gamma=2,
                nu = 0.0,
                p = 0.0,
                coef0 = 0,
                class_weights = None,
                epsilon = 1e-6
                )
        svm = cv2.SVM()
        svm.train(np.float32(Treino),np.float32(TreinoLabel),params = oIt.svm_params)
        for tsample in range(len(atributos)):
            test_sample = np.float32(atributos[tsample])
            res = int(svm.predict(test_sample))
            test = int(labels[tsample][0])
            oIt.dados[test,res] +=1
        mul = np.multiply(oIt.dados,pesos)
        oIt.escore_erro = np.matrix(map(lambda x: np.sum(x) ,mul))
        oIt.escore_acerto = np.matrix([pesosCorr[i]*oIt.dados[i,i] for i in range(7)])
        obj.set_iteracao(it+1,oIt)
    obj.save(oAddress+"{}-{:03d}%-{:03d}Iteracoes-PESOS_TIPO_{}.pkl".format(Metodo,percent,iteracoes,PesosTipo))
    
        
