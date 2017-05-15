from Metodos import *

percent =1 
obj = rodada(50,7,nAtrib = 14)
#obj = obj.load("OBJETOS/02-[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]-001%-050Iteracoes_7C3T.pkl")
obj = obj.load("OBJETOS/02-[1, 2, 3, 4, 5, 9]-001%-050Iteracoes_7C3T.pkl")
print "COM 6 ATRIBUTOS"
print obj.get_avg_cfm()
print "ACURACIA MEDIA:",obj.get_avg_acc()[0].T
print "DESVIOS: ", obj.get_std_acc().T
print "COM 9 ATRIBUTOS"
obj = obj.load("OBJETOS/02-PASSO_ROI_PRETO-001%-050Iteracoes_7C1T.pkl")
print obj.get_avg_cfm()
print "ACURACIA MEDIA:",obj.get_avg_acc()[0].T
print "DESVIOS: ", obj.get_std_acc().T