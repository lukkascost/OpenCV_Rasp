from Metodos import *
lista = []
passos = []
cls = 7
for i in range(1,1000):
    if (3456/i,4608/i) not in lista:
        lista.append((3456/i,4608/i))
        passos.append(i)
passos.sort(reverse=1)
for i in passos:
    obj = rodada(50,cls)
    obj = obj.load("OBJETOS/02-PASSO_ROI_PRETO-{:03d}%-050Iteracoes_7C1T.pkl".format(i))
    print float(obj.get_avg_acc()[0][cls])-float(obj.get_std_acc()[cls]),"\t-",float(obj.get_avg_acc()[0][cls]),"\t-",float(obj.get_avg_acc()[0][cls])+float(obj.get_std_acc()[cls]),"\t", i
    
