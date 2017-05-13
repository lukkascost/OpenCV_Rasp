from Metodos import *
passos = range(1,101)
lista = []
for i in range(101,1000):
    if (3456/i,4608/i) not in lista:
        lista.append((3456/i,4608/i))
        passos.append(i)
passos.sort(reverse=0)
geraGraficos([1,3,5,14], passos, 2, tipo="7C3T")