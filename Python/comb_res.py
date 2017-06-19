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
caracteres = [x for x in [1,3,10,14,17,20,22]]
todos = [x for x in range(1,25)]

positions.append(list(combinations(todos, 7)))
for i in positions[0]:
    combs.append(list(i))
print len(combs)
passos = [1]
metodo = "PASSO_ROI_PRETO"
it = 50
coisas = []
obj = rodada(it,7,nAtrib=24)
obj = obj.load("OBJETOS/{:02d}-{}-{:03d}%-{:03d}Iteracoes_7C3T.pkl".format(02,todos,1,it))
for k,positions in enumerate(combs):
    for percent in passos:
        if k<208242: break
        obj.execIteractions(positions)
        acc = float(obj.get_avg_acc()[0][7])
        std = float(obj.get_std_acc()[7])
        coisas.append([acc-std,acc+std,positions])
        with open("9Combinacoes24At.txt", mode='a') as f:
            f.write(str([acc-std,acc+std,positions])+"\n")
        coisas.sort(key=lambda tup: tup[0], reverse=1)
        for h,i in enumerate(coisas):
            print i
            if h == 9: break
        print "\n\n\n"            
        
        
#positions = [x for x in range(1,25)]
#obj = rodada(50,7,nAtrib=24)
#obj = obj.load("OBJETOS/{:02d}-{}-{:03d}%-{:03d}Iteracoes_7C3T.pkl".format(02,positions,1,50))
#obj.execIteractions([1,3,5,14])
#print obj.get_avg_acc()[0][7] , obj.get_std_acc()[7] , [1,3,5,14]
#obj.execIteractions(positions)
#print obj.get_avg_acc()[0][7] , obj.get_std_acc()[7] , positions
#obj.execIteractions([1,3,10,14,17,20,22])
#print obj.get_avg_acc()[0][7] , obj.get_std_acc()[7] , [1,3,10,14,17,20,22]
#obj.execIteractions([1,10,14,15])
#print obj.get_avg_acc()[0][7] , obj.get_std_acc()[7] , [10,14,16,17]
