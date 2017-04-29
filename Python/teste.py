from Metodos import *
lista = []
passos = []
cls = 7
for i in range(1,1000):
    if (3456/i,4608/i) not in lista:
        lista.append((3456/i,4608/i))
        passos.append(i)
passos.sort(reverse=0)
data = []
ref = 1
for j,percent in enumerate(passos):
    print j
    obj = rodada(50,7)
    obj = obj.load("OBJETOS/02-PASSO_ROI_PRETO-{:03d}%-050Iteracoes_7C1T.pkl".format(percent))
    if(j == 0): ref = obj.get_avg_ace()[7,0]
    data.append(obj.get_avg_ace()[7,0])
    data[j] = data[j]/ref
    print data[j]
_ax = plt.axes()
xpos = np.arange(len(data))
_chartBars = plt.bar(xpos, data)  
_ax.set_xticks(xpos)
_ax.set_xticklabels(passos)
plt.xlabel('Passo(M)')
plt.ylabel('Acerto (%)')
plt.grid(True)
plt.show()

