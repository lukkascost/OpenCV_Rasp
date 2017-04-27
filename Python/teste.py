from Metodos import *
obj = rodada(50,7)
obj = obj.load("OBJETOS/02-PASSO_ROI_PRETO-922%-050Iteracoes_7C1T.pkl")

b,a,v = np.linalg.svd(np.matrix(obj.GLCM.atributos).T)
for i in a:
    print i
for i in b: print i 
print v.shape
