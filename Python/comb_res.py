from Metodos import *
from itertools import combinations
positions = []
pesos = [[  0.   ,15.  ,25.   ,45.   ,60.   ,80.   ,85.],
         [  0.   ,0.   ,10.   ,20.   ,45.   ,65.   ,70.],
         [  0.   ,0.   ,0.    ,20.   ,35.   ,55.   ,60.],
         [  0.   ,0.   ,0.    ,0.    ,15.   ,35.   ,40.],
         [  0.   ,0.   ,0.    ,0.    ,0.    ,20.   ,25.],
         [  0.   ,0.   ,0.    ,0.    ,0.    ,0.    ,5.],
         [  0.   ,0.   ,0.    ,0.    ,0.    ,0.    ,0.]]
pesosCorr = [100.   ,85.   ,75.   ,55.   ,40.   ,20.   ,15.]
combs = []
caracteres = [x for x in range(1,15)]

positions.append(list(combinations(caracteres, 1)))
for i in positions[0]:
    combs.append(list(i))
passos = [1]
metodo = "PASSO_ROI_PRETO"
it = 50
coisas = []
obj = rodada(it,7,nAtrib=14)
for k,positions in enumerate(combs):
    for percent in passos:
        obj = obj.load("OBJETOS/COMBINACOES/{:02d}-{}-{:03d}%-{:03d}Iteracoes_7C3T.pkl".format(02,positions,percent,it))
        acc = float(obj.get_avg_acc()[0][7])
        std = float(obj.get_std_acc()[7])
        coisas.append([acc-std,acc+std,positions])
        coisas.sort(key=lambda tup: tup[0], reverse=1)
        for h,i in enumerate(coisas):
            print i
            #if h == 9: break
        print "\n\n\n"