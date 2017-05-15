from Classes import *

## tipo 02
PesosTipo = 2

pesos = [[  0.   ,15.  ,25.   ,45.   ,60.   ,80.   ,85.],
         [  0.   ,0.   ,10.   ,20.   ,45.   ,65.   ,70.],
         [  0.   ,0.   ,0.    ,20.   ,35.   ,55.   ,60.],
         [  0.   ,0.   ,0.    ,0.    ,15.   ,35.   ,40.],
         [  0.   ,0.   ,0.    ,0.    ,0.    ,20.   ,25.],
         [  0.   ,0.   ,0.    ,0.    ,0.    ,0.    ,5.],
         [  0.   ,0.   ,0.    ,0.    ,0.    ,0.    ,0.]]
pesosCorr = [100.   ,85.   ,75.   ,55.   ,40.   ,20.   ,15.]
passos = range(1,100)
lista = []
for i in range(101,1000):
    if (3456/i,4608/i) not in lista:
        lista.append((3456/i,4608/i))
        passos.append(i)
passos.sort(reverse=0)

pesos = np.matrix(pesos);
if __name__ == "__main__":
        for metodo in ["PASSO_ROI_PRETO"]:
                it = 50
                for percent in passos:
                        obj = rodada(it,7)
                        bd = ler_arquivo("GLCM_RESIZE/{}/GLCM_{:d}00.txt".format(metodo,percent))
                        bd = Normalizar(bd,len(bd),len(bd[0])-1)
                        for i in bd:
                                obj.GLCM.add_objeto(i)
                        for k in range(it):
                                oIt = iteracao(7,13)
                                oIt.conj_treino,oIt.conj_teste = obj.GLCM.extrai_treino_teste(obj.num_cls,oIt.nTreino,oIt.nTeste,1)
                                treino = []
                                treinoL = []
                                for i in oIt.conj_treino:
                                        treino.append(obj.GLCM.atributos[i])
                                        treinoL.append(obj.GLCM.labels[i])
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
                                svm.train(np.float32(treino),np.float32(treinoL),params = oIt.svm_params)
                                for i in oIt.conj_teste:
                                        sample = np.float32(obj.GLCM.atributos[i])
                                        res = int(svm.predict(sample))
                                        test = int(obj.GLCM.labels[i])
                                        oIt.dados[test,res]+=1
                                oIt.set_acuracia()
                                mul = np.multiply(oIt.dados,pesos)
                                oIt.escore_erro = np.matrix(map(lambda x: np.sum(x) ,mul))
                                oIt.escore_acerto = np.matrix([pesosCorr[l]*oIt.dados[l,l] for l in range(oIt.nclasses)])
                                obj.set_iteracao(k+1,oIt)
                        obj.max_ace = 5070
                        obj.max_err = 3705
                        #objInit = obj.load("OBJETOS/02-PASSO_ROI_PRETO-001%-050Iteracoes_7C1T.pkl")
                        obj.save("OBJETOS/{:02d}-{}-{:03d}%-{:03d}Iteracoes_7C1T.pkl".format(PesosTipo,metodo,percent,it))
