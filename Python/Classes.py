# -*- coding: cp1252 -*-
##################################################################################################################################################################################################
from Metodos import *
import cv2
import pickle as pk
import copy
##################################################################################################################################################################################################
## CUIDA DE CADA ITERA��O NA EXECUCAO DE TREINO-TESTE
class iteracao(object):
        """
        Class for data control at iteration level.        """
        def __init__(self,nclasses, nTeste, amostras = 50):
                '''
                P1: Number of qualifier classes
                P2: Number of samples for Test
                amostras: Default 50, Number of samples in each class                '''
                self.dados = np.zeros((nclasses,nclasses))
                self.acuracia = np.zeros((nclasses+1,1))
                self.escore_erro = np.zeros((nclasses,1))
                self.escore_acerto = np.zeros((nclasses,1))
                self.nclasses = nclasses
                self.conj_treino = []
                self.conj_teste = []
                self.resultados_pc = []
                self.qtdTeste = np.zeros(nclasses)
                self.qtdTreino = np.zeros(nclasses)
                self.nTeste = nTeste
                self.nTreino = amostras - nTeste
                self.svm_params = ""
        def set_dados(self,conf_mat):
                """
                Description: load confusion matrix on object
                P1: NUMPY MATRIX NxN WITH CONFUSION MATRIX VALUES WHERE:
                N IS THE NUMBER OF CLASSES                 """
                self.dados = conf_mat
        def set_escore_erro(self,escErr):
                self.escore_erro = escErr
        def set_escore_acerto(self, escAce):
                self.escore_acerto = escAce
        def set_acuracia(self):
                soma = 0
                for i in range(self.nclasses):
                        soma += self.dados[i,i]/self.nTeste
                        self.acuracia[i] = self.dados[i,i]/self.nTeste
                self.acuracia[self.nclasses] = soma/self.nclasses
        def __str__(self):
                string = ""
                for i in range(self.nclasses):
                        string+="\nClasse "+str(i)+" :"
                        string+="Acc = {:014.10f}%\t".format(float(self.acuracia[i])*100.0)
                        string+="Acc++ = {:014.10f}%\t".format(((sum(self.dados[i,:i+2] if (i==0) else self.dados[i,i-1:i+2]))/self.nTeste)*100.0)
                        string+="Acertos = {:05.02f}\t".format(self.dados[i,i])
                        string+="Acertos++ = {:05.02f}\t".format(sum(self.dados[i,:i+2] if (i==0) else self.dados[i,i-1:i+2]))
                        string+="Erros = {:05.02f}\t".format(self.nTeste - self.dados[i,i])
                        string+="Erros++ = {:05.02f}".format(self.nTeste - sum(self.dados[i,:i+2] if (i==0) else self.dados[i,i-1:i+2]))
                string+="\n\nMatriz Confusao\n"
                for i in range(self.nclasses):
                        string+="\nClasse {:02d}:\t".format(i)
                        for j in range(self.nclasses):
                                string+="{:05.02f}\t".format(self.dados[i,j])
                return string
##################################################################################################################################################################################################

class rodada(object):
        def __init__(self, nIteracoes, nclasses, nTreino = 13, nAtrib = 9):
                self.iteracoes = [iteracao(nclasses,nTreino) for i in range(nIteracoes)]
                self.sum_err = np.zeros((nclasses,1))
                self.sum_ace = np.zeros((nclasses,1))
                self.sum_cfm = np.zeros((nclasses,nclasses))
                self.max_err = 0
                self.max_ace = 0
                self.num_ite = nIteracoes
                self.num_cls = nclasses
                self.GLCM = GLCM(nAtrib)
                self.pesos = []
                self.pesosCorr = []
        def set_iteracao(self,nIter,oIter):
                self.iteracoes[nIter-1] = copy.copy(oIter)
                self.sum_err = np.add(self.sum_err,np.transpose(self.iteracoes[nIter-1].escore_erro))
                self.sum_ace = np.add(self.sum_ace,np.transpose(self.iteracoes[nIter-1].escore_acerto))
                self.sum_cfm = np.add(self.sum_cfm,self.iteracoes[nIter-1].dados)

        def get_avg_cfm(self):
                return np.divide(self.sum_cfm,float(self.num_ite))

        def get_avg_ace(self):
                res = np.zeros((self.num_cls+1,1))
                res[:self.num_cls] = np.divide(self.sum_ace,self.num_ite)
                res[-1]  = sum(res)/self.num_cls
                return res
        def get_avg_err(self):
                res = np.zeros((self.num_cls+1,1))
                res[:self.num_cls] = np.divide(self.sum_err,self.num_ite)
                res[-1]  = sum(res)
                return res
        def get_avg_acc(self):
                soma = np.zeros((self.num_cls+1,1))
                soma_= np.zeros((self.num_cls+1,1))
                for i in self.iteracoes:
                        for j in range(self.num_cls):
                                soma[j] += (i.dados[j,j]/i.nTeste)
                                soma_[j] += ((sum(i.dados[j,:j+2] if (j==0) else i.dados[j,j-1:j+2]))/i.nTeste)
                soma = np.multiply(soma,1.0/float(self.num_ite))
                soma_ = np.multiply(soma_,1.0/float(self.num_ite))
                soma[self.num_cls] = sum(soma[:self.num_cls])/float(self.num_cls)
                soma_[self.num_cls] = sum(soma_[:self.num_cls])/float(self.num_cls)
                return soma,soma_
        def get_std_acc(self):
            somadesvio = 0
            for i in self.iteracoes:
                at = np.subtract(i.acuracia,self.get_avg_acc()[0])
                at = np.power(at,2)
                somadesvio = np.add(somadesvio,at)
            deviation = np.divide(somadesvio,49)
            return np.sqrt(deviation)
        def save(self,path):
                pk.dump(self, open(path,"w"))
                print "Arquivo salvo com sucesso em ",path

        def load(self,path):
                return copy.copy(pk.load(open(path,"r")))

        def execIteractions(self,positions,typeRandom = 1, params = None):
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
                        for k in self.iteracoes[i].conj_teste:
                                sample = np.float32(self.GLCM.getNewAtrib(k, positions))
                                res = int(svm.predict(sample))
                                test = int(self.GLCM.labels[k])
                                self.iteracoes[i].dados[test,res]+=1
                        self.iteracoes[i].set_acuracia()
                        mul = np.multiply(self.iteracoes[i].dados,self.pesos)
                        self.iteracoes[i].escore_erro = np.matrix(map(lambda x: np.sum(x) ,mul))
                        self.iteracoes[i].escore_acerto = np.matrix([self.pesosCorr[l]*self.iteracoes[i].dados[l,l] for l in range(self.iteracoes[i].nclasses)])  
                        self.sum_err = np.add(self.sum_err,np.transpose(self.iteracoes[i].escore_erro))
                        self.sum_ace = np.add(self.sum_ace,np.transpose(self.iteracoes[i].escore_acerto))
                        self.sum_cfm = np.add(self.sum_cfm,self.iteracoes[i].dados) 
                        
                        
                
                        
        def __str__(self):
                string = ""
                for i in range(self.num_ite):
                        string+="\n\n\n--------------------------------- itera��o {:03d} -----------------------------------".format(i+1)
                        string+="\n\t---------------------------- KERNEL {} -----------------------------".format(self.iteracoes[i].svm_params['kernel_type'])
                        string+="\n\t-------------------------- GAMMA {:05.02f} ----------------------------".format(self.iteracoes[i].svm_params['gamma'])
                        string+=str(self.iteracoes[i])
                        string+="\n----------------------------------------------------------------------------------------\n"
                for i in range(self.num_cls+1):
                        string+= "\nClasse {:02d}:\t".format(i)
                        string+= "Acc = {:014.10f}%\t".format(self.get_avg_acc()[0][i,0]*100)
                        string+= "Acc++ = {:014.10f}%\t".format(self.get_avg_acc()[1][i,0]*100)
                return string
        def normalizaItEscore(self):
                maior = np.array([100.,85.,75.,55.,40.,20.,15.])
                maior = np.multiply(maior, self.iteracoes[0].nTreino)
                menor = np.zeros(self.num_cls)
                for i in self.iteracoes:
                        for j in range(self.num_cls):
                                i.escore_acerto[0,j] = (i.escore_acerto[0,j]-menor[j])/(maior[j]-menor[j])
                                i.escore_acerto[0,j] *=100
        def atualiza_sums(self):
                self.sum_ace = np.zeros((self.num_cls,1))
                for i in self.iteracoes:
                        self.sum_ace = np.add(self.sum_ace, i.escore_acerto.T)

class GLCM(object):
        def __init__(self,num_atributos):
                self.num_atrib = num_atributos
                self.num_objetos = 0
                self.atributos = []
                self.labels = []
        def add_objeto(self,atributos):
                self.atributos.append(atributos[:self.num_atrib])
                self.labels.append(atributos[-1]-1)
                self.num_objetos+=1
        def extraiTp1(self,qtdTreino,qtdTeste,nclasses):
                treino = []
                qtdtreinopc = np.zeros(nclasses)
                teste = []
                qtdtestepc = np.zeros(nclasses)
                while (len(treino)<qtdTreino*nclasses):
                        rd = random.randint(0,self.num_objetos-1)
                        if rd not in treino:
                                if qtdtreinopc[int(self.labels[rd])] < qtdTreino:
                                        treino.append(rd)
                                        qtdtreinopc[int(self.labels[rd])] +=1
                while (len(teste)<qtdTeste*nclasses):
                        rd = random.randint(0,self.num_objetos-1)
                        if rd not in treino and rd not in teste:
                                if qtdtestepc[int(self.labels[rd])] < qtdTeste:
                                        teste.append(rd)
                                        qtdtestepc[int(self.labels[rd])] += 1
                return treino,teste
        def extraiTp2(self,qtdTreino,qtdTeste,nclasses,fator):
            treino = []
            teste = []
            classe = 0
            while(len(teste)<fator*qtdTeste):
                if classe == 5: classe = 0
                rd = sorteiaClasse(classe,self)
                while (rd in treino or rd in teste): rd = sorteiaClasse(classe,self)
                teste.append(rd)
                classe+=1
            classe = 5
            while(len(teste)<2*fator*qtdTeste):
                if classe == 7: classe = 5
                rd = sorteiaClasse(classe,self)
                while (rd in treino or rd in teste): rd = sorteiaClasse(classe,self)
                teste.append(rd)
                classe+=1
            classe = 0
            while(len(treino)<fator*qtdTreino):
                if classe == 5: classe = 0
                rd = sorteiaClasse(classe,self)
                while (rd in treino or rd in teste): rd = sorteiaClasse(classe,self)
                treino.append(rd)
                classe+=1
            classe = 5
            while(len(treino)<2*fator*qtdTreino):
                if classe == 7: classe = 5
                rd = sorteiaClasse(classe,self)
                while (rd in treino or rd in teste): rd = sorteiaClasse(classe,self)
                treino.append(rd)
                classe+=1
            return treino,teste

        def extrai_treino_teste(self,nclasses,qtdtreino,qtdteste,tipo,fator=2):
            if tipo == 1:
                return self.extraiTp1(qtdtreino,qtdteste,nclasses)
            if tipo == 2:
                return self.extraiTp2(qtdtreino,qtdteste,nclasses,fator)
        def getNewAtrib(self,index, posicoes):
                """
                Return:
                R1: List of atributes in positions P2 of index P1.
                Params:
                P1: Index of element atribute in list of GLCM object
                P2: list of elements atributes selecteds. None for all.                """
                if posicoes is None: posicoes = [x for x in range(self.num_atrib)]
                newAtt = []
                for i,j in enumerate(self.atributos[index]):
                        if i+1 in posicoes:
                                newAtt.append(j)
                return newAtt
        def __str__(self):
                res = ""
                for i in range(self.num_objetos):
                        res+= "\nAtributo {:03d}:\t".format(i)+str(self.atributos[i])+"\t Label: "+str(self.labels[i])
                return res
