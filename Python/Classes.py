##################################################################################################################################################################################################
from Metodos import *
import copy
##################################################################################################################################################################################################



class iteracao(object):
        def __init__(self,nclasses):
                self.dados = np.zeros((nclasses,nclasses))
                self.escore_erro = np.zeros((nclasses,1))
                self.escore_acerto = np.zeros((nclasses,1))
        def set_dados(self,conf_mat):
                self.dados = conf_mat
        def set_escore_erro(self,escErr):
                self.escore_erro = escErr
        def set_escore_acerto(self, escAce):
                self.escore_acerto = escAce
        
class rodada(object):
        def __init__(self, nIteracoes, nclasses):
                self.iteracoes = [iteracao(nclasses) for i in range(nIteracoes)]
                self.avg_err = np.zeros((nclasses,1))
                self.avg_ace = np.zeros((nclasses,1))
                self.avg_cfm = np.zeros((nclasses,nclasses))
                self.num_ite = nIteracoes
                self.num_cls = nclasses
                
        def avg_calculate(self):
                self.avg_cfm = np.divide(self.avg_cfm, np.full((self.num_cls, self.num_cls), float(self.num_ite)))
                self.avg_ace =  map(lambda x: x / self.num_ite ,self.avg_ace)
                self.avg_err =  map(lambda x: x / self.num_ite , self.avg_err)
            
        def set_iteracao(self,nIter,oIter):
                self.iteracoes[nIter-1] = copy.copy(oIter)
                self.avg_err = np.add(self.avg_err,self.iteracoes[nIter-1].escore_erro)
                self.avg_ace = np.add(self.avg_ace,self.iteracoes[nIter-1].escore_acerto)
                print  self.avg_err
                #self.avg_calculate()
        
                            
                                
                        
a = np.full((7,7),10.0)
b = np.full((7,7),20.0)
c = [iteracao(7),iteracao(7)]
c[0].set_dados(a)
c[0].set_escore_erro(np.full((7,1),8.0))
c[1].set_escore_erro(np.full((7,1),2.0))
c[1].set_dados(b)
d = rodada(3,7)
d.set_iteracao(1,c[0])
d.set_iteracao(2,c[1])


