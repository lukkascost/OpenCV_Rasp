
from Metodos import *
addressSave = "DataBase/SVM_Vectors.txt"
bdTeste = ler_arquivo("DataBase/testing.dat")
bdTreino = ler_arquivo("DataBase/training.dat")

Teste = []
TesteLabel = []
TreinoLabel = []
Treino = []
for i in range(len(bdTeste)):
	Teste.append( bdTeste[i][:9])
	TesteLabel.append( [bdTeste[i][-1]])

for i in range(len(bdTreino)):
	Treino.append(bdTreino[i][:9])
	TreinoLabel.append(bdTreino[i][-1])


Resultado = ""
for x in range(1,50):
	print "K = ", x
        Resultado = Resultado +  "\n-------------------------------------------------------------"

        Resultado = Resultado +   "\n  KERNEL_RBF "

        svm_params = dict(kernel_type = cv2.SVM_RBF,
        svm_type = cv2.SVM_C_SVC,
        C=7,
        degree =1,
        gamma=20,
        nu = 0.0,
        p = 0.0,
        coef0 = 10,
        class_weights = None,
        epsilon = 1e-6
        )
	svm_p = dict(params = svm_params, k_fold = x)

        svm = cv2.SVM()
        svm.train_auto(np.float32(Treino),np.float32(TreinoLabel),None,None ,svm_p )
        Resultado = Resultado +  "\n  PARAMETROS AUTOMATICOS   K = " + str(x)
        #svm.train(np.float32(Treino),np.float32(TreinoLabel),params = svm_params)
        #print "   PARAMETROS ESTATICOS"

        svm.save(addressSave)
        acerto = 0
        erro = 0
        acertos = np.zeros(7)
        erros = np.zeros(7)
        for tsample in range(len(Teste)):
            test_sample = np.float32(Teste[tsample])
            res = int(svm.predict(test_sample))
            test = int(TesteLabel[tsample][0])
            if(test!=res): 
                erro = erro +1
                erros[test] = erros[test]+1
            else:  
                acerto = acerto +1
                acertos[test] = acertos[test] +1 
        Resultado = Resultado +   "\nTaxa de acerto:"+  str(float((acerto*100))/float((acerto+erro)))
        Resultado = Resultado +   "\nAcertos = "+str(acerto) + " Erros: "+ str(erro)
        for i in range(7):
                Resultado = Resultado + "\nClasse"+str(i)+"Acc = "+str(acertos[i]/(acertos[i]+erros[i]))
Salvar_texto(Resultado,"Resultado.txt")
