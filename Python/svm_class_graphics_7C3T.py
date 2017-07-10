from Metodos import *
passos = []
lista = []
for i in range(1,1000):
    if (3456/i,4608/i) not in lista:
        lista.append((3456/i,4608/i))
        passos.append(i)
passos.sort(reverse=0)
stri = ""
for i in lista:
    stri+="{}\t".format(i)
print stri
graficos = []
graficos.append([x for x in range(1,25)])
graficos.append([1,2,5,9,15,16,17,21,22,23])
graficos.append([1, 3, 10, 14, 17, 20, 22])

peso = 2
tag = "ACURACIAS"
objs = []
for i in passos:
    objs.append(rodada(50,7).load("OBJETOS/{:02d}-{}-{:03d}%-{:03d}Iteracoes_{}.pkl".format(peso,[x for x in range(1,25)],i,50,"7C3T")))
print objs
for i in graficos:    
    acc_ = []
    smetodo = i
    tipo = "7C3T"
    acc = []
    for j,percent in enumerate(passos):
        objs[j].execIteractions(i)
        acc_.append(objs[j].get_avg_acc()[1][-1,0]*100)
        acc.append(objs[j].get_avg_acc()[0][-1,0]*100)
    stri = ""
    for ki in acc:
        stri+= "{}\t".format(ki)
    print stri        
    _ax = plt.axes()
    xpos = np.arange(len(acc))
    _chartBars = plt.bar(xpos, acc)  
    _ax.set_xticks(xpos)
    _ax.set_xticklabels(passos)
    plt.title("ACURACIAS ATTS: "+str(smetodo))
    plt.grid(True)
    plt.savefig("GRAFICOS/{:02d} - {}-INICIO_{:03d}-TAMANHO_{:03d}_{}_{}.png".format(peso,str(smetodo),min(passos),len(passos),tag,tipo),bbox_inches='tight',dpi=1080)
    print "GRAFICOS/{:02d} - {}-INICIO_{:03d}-TAMANHO_{:03d}_{}_{}.png".format(peso,str(smetodo),min(passos),len(passos),tag,tipo)
    #plt.show()
    plt.gcf().clear()        