from Classes import *

## tipo 02
PesosTipo = 2
positions = [x for x in range(1,25)]
#positions = [1,2,3,4,5,9]
pesos = [[  0.   ,15.  ,25.   ,45.   ,60.   ,80.   ,85.],
         [  0.   ,0.   ,10.   ,20.   ,45.   ,65.   ,70.],
         [  0.   ,0.   ,0.    ,20.   ,35.   ,55.   ,60.],
         [  0.   ,0.   ,0.    ,0.    ,15.   ,35.   ,40.],
         [  0.   ,0.   ,0.    ,0.    ,0.    ,20.   ,25.],
         [  0.   ,0.   ,0.    ,0.    ,0.    ,0.    ,5.],
         [  0.   ,0.   ,0.    ,0.    ,0.    ,0.    ,0.]]
pesosCorr = [100.   ,85.   ,75.   ,55.   ,40.   ,20.   ,15.]
passos = []
lista = []
for i in range(1,1000):
        if (3456/i,4608/i) not in lista:
                lista.append((3456/i,4608/i))
                passos.append(i)
passos.sort(reverse=0)
nclasses  = 2

pesos = np.matrix(pesos);
p = []

########################################################################################################################################################################
#for metodo in [""]:
        #it = 50
        #for percent in passos:
                #print percent
                #obj = rodada(it,nclasses,nAtrib=24,nTreino=26, nAmostras=100)
                #bd = ler_arquivo("GLCM_RESIZE/DECIMACAO_BASE_24/FEATURES_M{:d}.txt".format(percent))
                #bd = Normalizar(bd,len(bd),len(bd[0])-1)
                #for i in bd:
                        #obj.GLCM.add_objeto(i)
                        #if obj.GLCM.labels[-1] < 5:
                                #obj.GLCM.labels[-1]   = 0.0
                        #else: 
                                #obj.GLCM.labels[-1]   = 1.0
                #for i in range(it):
                        #obj.iteracoes[i].conj_treino,obj.iteracoes[i].conj_teste = obj.GLCM.extrai_treino_teste(obj.num_cls,obj.iteracoes[i].nTreino,obj.iteracoes[i].nTeste,1)  
                        #train = []
                        #trainLabel = []
                        #for k in obj.iteracoes[i].conj_treino:
                                #train.append(obj.GLCM.getNewAtrib(k,positions))
                                #trainLabel.append(obj.GLCM.labels[k])
                        #obj.iteracoes[i].svm_params = dict(kernel_type = cv2.SVM_RBF,
                                                                        #svm_type = cv2.SVM_C_SVC,
                                                                        #gamma=2.0,
                                                                        #nu = 0.0,
                                                                        #p = 0.0,
                                                                        #coef0 = 0)
                        #svm = cv2.SVM()
                        #svm.train(np.float32(train),np.float32(trainLabel),params = obj.iteracoes[i].svm_params)
                        #for k in obj.iteracoes[i].conj_teste:
                                #sample = np.float32(obj.GLCM.getNewAtrib(k, positions))
                                #res = int(svm.predict(sample))
                                #test = int(obj.GLCM.labels[k])
                                #obj.iteracoes[i].dados[test,res]+=1
                        #obj.iteracoes[i].set_acuracia()
                        #obj.sum_cfm = np.add(obj.sum_cfm,obj.iteracoes[i].dados) 
                #obj.save("OBJETOS/{:02d}-{}-{:03d}%-{:03d}Iteracoes_2C3T.pkl".format(PesosTipo,positions,percent,it))



########################################################################################################################################################################
lin1 = ""
lin2 = ""
lin3 = ""
lin4 = ""
for percent in [70]:
        print 3456/percent , 4608/percent
        obj = rodada(1, 1)
        obj = obj.load("OBJETOS/{:02d}-{}-{:03d}%-{:03d}Iteracoes_2C3T.pkl".format(PesosTipo,positions,percent,50))
        #lin1+=  "{:02.04f}\t".format(obj.get_avg_acc()[0][-1][0])
        p2 = [1,2,3,4]
        obj.execIteractions(p2)
        lin2+=  "{:02.04f}\t".format(obj.get_avg_acc()[0][-1][0])
        #p2 = [1,2,5,9,15,16,17,21,22,23]
        #obj.execIteractions(p2)
        #lin3+=  "{:02.04f}\t".format(obj.get_avg_acc()[0][-1][0])
        #p2 = [1,2,5,9,15,16,17,21,22,23]
        #obj.execIteractions(p2)
        #lin4+=  "{:02.04f}\t".format(obj.get_avg_acc()[0][-1][0])
        print lin1
        print lin2
        print lin3
        print lin4
        print "\n\n"
        