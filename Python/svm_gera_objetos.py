from Classes import *

## tipo 01
PesosTipo = "01"



pesos = [[  0.   ,1.   ,2.   ,3.   ,4.   ,5.   ,6.],
         [  1.   ,0.   ,1.   ,2.   ,3.   ,4.   ,5.],
         [  2.   ,1.   ,0.   ,1.   ,2.   ,3.   ,4.],
         [  3.   ,2.   ,1.   ,0.   ,1.   ,2.   ,3.],
         [  4.   ,3.   ,2.   ,1.   ,0.   ,1.   ,2.],
         [  5.   ,4.   ,3.   ,2.   ,1.   ,0.   ,1.],
         [  6.   ,5.   ,4.   ,3.   ,2.   ,1.   ,0.]]
pesos = np.matrix(pesos);

pesosCorr = [7.   ,6.   ,5.   ,4.   ,3.   ,2.   ,1.]

if __name__ == "__main__":
        for metodo in ["PASSO_DECIMACAO","PASSO_ROI","PASSO_ROI_PRETO"]:
                it = 50
                for percent in range(3,36)+range(75,100):
                        obj = rodada(it,7)
                        bd = ler_arquivo("GLCM_RESIZE/{}/GLCM_{:d}00.txt".format(metodo,percent))
                        bd = Normalizar(bd,len(bd),len(bd[0])-1)
                        for i in bd:
                                obj.GLCM.add_objeto(i)
                        for k in range(it):
                                oIt = iteracao(7,13)
                                while(len(oIt.conj_teste) < oIt.nTeste*oIt.nclasses):
                                        rd = random.randint(0,len(bd)-1)
                                        if(rd not in oIt.conj_teste):
                                                if(oIt.qtdTeste[obj.GLCM.labels[rd]] < oIt.nTeste):
                                                        oIt.qtdTeste[obj.GLCM.labels[rd]]+=1
                                                        oIt.conj_teste.append(rd)

                                for i in range(len(bd)):
                                        if i not in oIt.conj_teste:
                                                oIt.conj_treino.append(i)
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
                                mul = np.multiply(oIt.dados,pesos)
                                oIt.escore_erro = np.matrix(map(lambda x: np.sum(x) ,mul))
                                oIt.escore_acerto = np.matrix([pesosCorr[l]*oIt.dados[l,l] for l in range(oIt.nclasses)])
                                obj.set_iteracao(k+1,oIt)
                        obj.save("OBJETOS/{}-{:03d}%-{:03d}Iteracoes-PESOS_TIPO_{}.pkl".format(metodo,percent,it,PesosTipo))






