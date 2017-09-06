from Classes import *

## tipo 02
PesosTipo = 2
positions = [x for x in range(1,25)]
passos = []
lista = []
for i in range(1,1000):
        if (3456/i,4608/i) not in lista:
                lista.append((3456/i,4608/i))
                passos.append(i)
passos.sort(reverse=0)
nclasses  = 15

p = []

lin1 = ""
lin2 = ""
lin3 = ""
lin4 = ""
resultados = np.zeros((4,len(passos),3))
for i,percent in enumerate(passos):
        print "Calculando passo ... ",percent
        obj = rodada(1, 1)
        obj = obj.load("OBJETOS/{:02d}-{}-{:03d}%-{:03d}Iteracoes_7C3T.pkl".format(PesosTipo,positions,percent,50))
        lin1+=  "{:02.04f}\t".format(obj.get_avg_acc()[0][-1][0])
        resultados[0,i,0] = obj.get_avg_acc()[0][-1][0] - obj.get_std_acc()[-1]
        resultados[0,i,1] = obj.get_avg_acc()[0][-1][0]
        resultados[0,i,2] = obj.get_avg_acc()[0][-1][0] + obj.get_std_acc()[-1]
        
        p2 = [1,3,10,14,17,20,22]
        obj.execIteractions(p2)
        lin2+=  "{:02.04f}\t".format(obj.get_avg_acc()[0][-1][0])
        resultados[1,i,0] = obj.get_avg_acc()[0][-1][0] - obj.get_std_acc()[-1]
        resultados[1,i,1] = obj.get_avg_acc()[0][-1][0]
        resultados[1,i,2] = obj.get_avg_acc()[0][-1][0] + obj.get_std_acc()[-1]
        
        p2 = [1,2,5,9,15,16,17,21,22,23]
        obj.execIteractions(p2)
        lin3+=  "{:02.04f}\t".format(obj.get_avg_acc()[0][-1][0])
        resultados[2,i,0] = obj.get_avg_acc()[0][-1][0] - obj.get_std_acc()[-1]
        resultados[2,i,1] = obj.get_avg_acc()[0][-1][0]
        resultados[2,i,2] = obj.get_avg_acc()[0][-1][0] + obj.get_std_acc()[-1]
        
        #p2 = [1,2,5,9,15,16,17,21,22,23]
        #obj.execIteractions(p2)
        #lin4+=  "{:02.04f}\t".format(obj.get_avg_acc()[0][-1][0])
        #resultados[3,i,0] = obj.get_avg_acc()[0][-1][0] - obj.get_std_acc()[-1]
        #resultados[3,i,1] = obj.get_avg_acc()[0][-1][0]
        #resultados[3,i,2] = obj.get_avg_acc()[0][-1][0] + obj.get_std_acc()[-1]
        media  = np.average(resultados[0,:5,1])
        mediaMinus = np.average(resultados[0,:5,0])
        mediaPlus = np.average(resultados[0,:5,2])
        possiveis = []
        
        #print "Calculando possiveis 1 "
        possiveis.append([])
        for j,i in enumerate(resultados[0,:,1]):
                if i < mediaPlus and i>mediaMinus:
                        possiveis[0].append(passos[j])
        
        #print "Calculando possiveis 2 "
        media  = np.average(resultados[1,:5,1])
        mediaMinus = np.average(resultados[1,:5,0])
        mediaPlus = np.average(resultados[1,:5,2])
        possiveis.append([])
        for j,i in enumerate(resultados[1,:,1]):
                if i < mediaPlus and i>mediaMinus:
                        possiveis[1].append(passos[j])
        
        
        #print "Calculando possiveis 3 "
        media  = np.average(resultados[2,:5,1])
        mediaMinus = np.average(resultados[2,:5,0])
        mediaPlus = np.average(resultados[2,:5,2])
        possiveis.append([])
        for j,i in enumerate(resultados[2,:,1]):
                if i < mediaPlus and i>mediaMinus:
                        possiveis[2].append(passos[j])
                
        
        ##print "Calculando possiveis 4 "
        #media  = np.average(resultados[3,:5,1])
        #mediaMinus = np.average(resultados[3,:5,0])
        #mediaPlus = np.average(resultados[3,:5,2])
        #possiveis.append([])
        #for j,i in enumerate(resultados[3,:,1]):
                #if i < mediaPlus and i>mediaMinus:
                        #possiveis[3].append(passos[j])
                
        for i in possiveis:
                print "Possiveis: ",i        
                
        melhor =  0 
        for i in passos:
                if i in possiveis[0] and i in possiveis[1] and i in possiveis[2] :
                        if i > melhor :
                                melhor = i
        print melhor 