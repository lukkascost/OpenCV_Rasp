from Metodos import *
lista = []
passos = []
cls = 7
for i in range(1,1000):
    if (3456/i,4608/i) not in lista:
        lista.append((3456/i,4608/i))
        passos.append(i)
passos.sort(reverse=0)
obj = rodada(50,7)
obj = obj.load("OBJETOS/02-PASSO_ROI_PRETO-004%-050Iteracoes_7C1T.pkl")
geraGraficos(["PASSO_ROI_PRETO"],passos,2,reta = 1)
geraGraficos(["PASSO_ROI_PRETO"],passos,2,reta = 2)
geraGraficos(["PASSO_ROI_PRETO"],passos,2,reta = 3)
