# -*- coding: cp1252 -*-
##################################################################################################################################################################################################
from Metodos import *
import pickle as pk
import copy
##################################################################################################################################################################################################
## CUIDA DE CADA ITERAÇÃO NA EXECUCAO DE TREINO-TESTE
class iteracao(object):
        ## CONSTRUTOR DA CLASSE INIT
        ## nclasses: NUMERO DE CLASSES QUE O CLASSIFICADOR POSSUI.
        ## nTeste: NUMERO DE AMOSTRAS PARA TESTE.
        def __init__(self,nclasses, nTeste):
                self.dados = np.zeros((nclasses,nclasses))
                self.escore_erro = np.zeros((nclasses,1))
                self.escore_acerto = np.zeros((nclasses,1))
                self.nclasses = nclasses
                self.conj_treino = ""
                self.conj_teste = ""
                self.nTeste = nTeste
        ##################################################################################################################################################################################################
        ## ENCAPSULAMENTO DA VARIAVEL dados
        ## conf_mat UMA MATRIZ NUMPY nclasses X nclasses CONTENDO A MATRIZ CONFUSAO.
        def set_dados(self,conf_mat):
                self.dados = conf_mat
        ##################################################################################################################################################################################################
        def set_escore_erro(self,escErr):
                self.escore_erro = escErr
        def set_escore_acerto(self, escAce):
                self.escore_acerto = escAce
        def __str__(self):
                string = ""
                for i in range(self.nclasses):
                        string+="\nClasse "+str(i)+" :"
                        string+="Acc = "+str((self.dados[i,i]/self.nTeste)*100.0)+"%\t"
                        string+="Acc++ = "+str(((sum(self.dados[i,:i+2] if (i==0) else self.dados[i,i-1:i+2]))/self.nTeste)*100.0)+"%\t"
                        string+="Acertos = "+str(self.dados[i,i])+"\t"
                        string+="Acertos++ = "+str(sum(self.dados[i,:i+2] if (i==0) else self.dados[i,i-1:i+2]))
                        string+="Erros = "+str(self.nTeste - self.dados[i,i])+"\t"
                        string+="Erros++ = "+str(self.nTeste - sum(self.dados[i,:i+2] if (i==0) else self.dados[i,i-1:i+2]))
                return string
##################################################################################################################################################################################################

class rodada(object):
        def __init__(self, nIteracoes, nclasses, nTreino = 13):
                self.iteracoes = [iteracao(nclasses,nTreino) for i in range(nIteracoes)]
                self.sum_err = np.zeros((nclasses,1))
                self.sum_ace = np.zeros((nclasses,1))
                self.sum_cfm = np.zeros((nclasses,nclasses))
                self.num_ite = nIteracoes
                self.num_cls = nclasses
        def set_iteracao(self,nIter,oIter):
                self.iteracoes[nIter-1] = copy.copy(oIter)
                self.sum_err = np.add(self.sum_err,self.iteracoes[nIter-1].escore_erro)
                self.sum_ace = np.add(self.sum_ace,self.iteracoes[nIter-1].escore_acerto)
                self.sum_cfm = np.add(self.sum_cfm,self.iteracoes[nIter-1].dados)
                
        def get_avg_cfm(self):
                return np.divide(self.sum_cfm,float(self.num_ite))
        
        def get_avg_ace(self):
                return np.matrix(map(lambda x:x/self.num_ite , self.sum_ace))
        
        def get_avg_err(self):
                return np.matrix(map(lambda x:x/self.num_ite , self.sum_err))

        def save(self,path):
                pk.dump(self, open(path,"wb"))
                print "Arquivo salvo com sucesso em ",path

        def load(self,path):
                return copy.copy(pk.load(open(path,"rb")))

##
##conf_mat = np.load("ConfMat3percentMat.npy")
##esc_err = np.load("EscErr3percentMat.npy")
##esc_ace = np.load("EscAce3percentMat.npy")
##obj = rodada(50,7)
##for i in range(1,51):
##        oIt = iteracao(7,13)
##        oIt.set_dados(conf_mat[i-1])
##        oIt.set_escore_acerto(esc_ace[:7,i-1])
##        oIt.set_escore_erro(esc_err[:7,i-1])
##        obj.set_iteracao(i,oIt)
##obj.save("obj_3%_ROI_PRETO.pkl")
##obj = obj.load("obj_3%_ROI_PRETO.pkl")
##print obj.iteracoes[0]
