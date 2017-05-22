from Metodos import *
obj = rodada(50, 7, nAtrib=14).load("OBJETOS/02-PASSO_ROI_PRETO-001%-050Iteracoes_7C1T.pkl")
cln = np.zeros((7,50,9))
for j,i in enumerate(range(0,301,50)):
    cln[j] = obj.GLCM.atributos[i:i+50]
stringRes = ""
for i in range(7):
    for j in range(9):
        stringRes += "{:03.08f}\t".format(np.average(cln[i,:,j]))
        stringRes += "{:03.08f}\t".format(np.average(mp.pow(np.std(cln[i,:,j]),2)))
    stringRes+="\n"

for j in range(9):
    stringRes+= "{:03.08f}\t".format(np.average(cln[:,:,j]))
    stringRes+= "{:03.08f}\t".format(mp.pow(np.std(cln[:,:,j]),2))
print stringRes.replace(".", ",")