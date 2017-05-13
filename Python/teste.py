from Metodos import *
#lista = []
#passos = []
#cls = 7
#for i in range(1,1000):
    #if (3456/i,4608/i) not in lista:
        #lista.append((3456/i,4608/i))
        #passos.append(i)
#passos.sort(reverse=0)
#data = []
#ref = 1
#for j,percent in enumerate(passos):
    #print j
    #obj = rodada(50,7)
    #obj = obj.load("OBJETOS/02-PASSO_ROI_PRETO-{:03d}%-050Iteracoes_7C1T.pkl".format(percent))
    #if(j == 0): ref = obj.get_avg_acc()[0][7,0]
    #data.append(obj.get_avg_acc()[0][7,0])
    #data[j] = data[j]/ref
    #print data[j]
#_ax = plt.axes()
#xpos = np.arange(len(data))
#_chartBars = plt.bar(xpos, data)  
#_ax.set_xticks(xpos)
#_ax.set_xticklabels(passos)
#plt.xlabel('Passo(M)')
#plt.ylabel('Acerto (%)')
#plt.grid(True)
#plt.show()
positions = [1,3,5,14]
percent =1 
obj = rodada(50,7,nAtrib = 14)
bd = ler_arquivo("GLCM_RESIZE/PASSO_ROI_PRETO_ATT14/FEATURES_M{:d}.txt".format(percent))
bd = Normalizar(bd,len(bd),len(bd[0])-1)

obj.pesos = np.matrix([[  0.   ,15.  ,25.   ,45.   ,60.   ,80.   ,85.],
         [  0.   ,0.   ,10.   ,20.   ,45.   ,65.   ,70.],
         [  0.   ,0.   ,0.    ,20.   ,35.   ,55.   ,60.],
         [  0.   ,0.   ,0.    ,0.    ,15.   ,35.   ,40.],
         [  0.   ,0.   ,0.    ,0.    ,0.    ,20.   ,25.],
         [  0.   ,0.   ,0.    ,0.    ,0.    ,0.    ,5.],
         [  0.   ,0.   ,0.    ,0.    ,0.    ,0.    ,0.]])
obj.pesosCorr = [100.   ,85.   ,75.   ,55.   ,40.   ,20.   ,15.]

for i in bd:
    obj.GLCM.add_objeto(i)
obj.execIteractions(positions)
