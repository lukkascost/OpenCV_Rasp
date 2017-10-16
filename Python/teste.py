from Classes import *
positions = [x for x in range(1,25)]
obj = rodada(50,7,nAtrib=24)
obj = obj.load("OBJETOS/{:02d}-{}-{:03d}%-{:03d}Iteracoes_7C3T.pkl".format(02,positions,70,50))
self = obj
typeRandom = 1
positions = [1,2,5,9,15,16,17,21,22,23]
params = None
self.clean()
for i in range(self.num_ite):
        self.iteracoes[i].conj_treino,self.iteracoes[i].conj_teste = self.GLCM.extrai_treino_teste(self.num_cls,self.iteracoes[i].nTreino,self.iteracoes[i].nTeste,typeRandom)
        train = []
        trainLabel =[]
        for k in self.iteracoes[i].conj_treino:
                train.append(self.GLCM.getNewAtrib(k,positions))
                trainLabel.append(self.GLCM.labels[k])
        
        if params is None:
                self.iteracoes[i].svm_params = dict(kernel_type = cv2.SVM_RBF,
                                                    svm_type = cv2.SVM_C_SVC,
                                                    gamma=2.0,
                                                    nu = 0.0,
                                                    p = 0.0,
                                                    coef0 = 0)
        else: self.iteracoes[i].svm_params = params
        svm = cv2.SVM()
        svm.train(np.float32(train),np.float32(trainLabel),params = self.iteracoes[i].svm_params)
        svm.save("SVM_LUCAS10_70.txt")
        for k in self.iteracoes[i].conj_teste:
                sample = np.float32(self.GLCM.getNewAtrib(k, positions))
                res = int(svm.predict(sample))
                test = int(self.GLCM.labels[k])
                self.iteracoes[i].dados[test,res]+=1
        self.iteracoes[i].set_acuracia()
        #mul = np.multiply(self.iteracoes[i].dados,self.pesos)
        #self.iteracoes[i].escore_erro = np.matrix(map(lambda x: np.sum(x) ,mul))
        #self.iteracoes[i].escore_acerto = np.matrix([self.pesosCorr[l]*self.iteracoes[i].dados[l,l] for l in range(self.iteracoes[i].nclasses)])  
        #self.sum_err = np.add(self.sum_err,np.transpose(self.iteracoes[i].escore_erro))
        #self.sum_ace = np.add(self.sum_ace,np.transpose(self.iteracoes[i].escore_acerto))
        self.sum_cfm = np.add(self.sum_cfm,self.iteracoes[i].dados) 
        