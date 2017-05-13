from Classes import *

## tipo 02
PesosTipo = 2

pesos = [[  0.   ,15.  ,25.   ,45.   ,60.   ,80.   ,85.],
         [  0.   ,0.   ,10.   ,20.   ,45.   ,65.   ,70.],
         [  0.   ,0.   ,0.    ,20.   ,35.   ,55.   ,60.],
         [  0.   ,0.   ,0.    ,0.    ,15.   ,35.   ,40.],
         [  0.   ,0.   ,0.    ,0.    ,0.    ,20.   ,25.],
         [  0.   ,0.   ,0.    ,0.    ,0.    ,0.    ,5.],
         [  0.   ,0.   ,0.    ,0.    ,0.    ,0.    ,0.]]
pesosCorr = [100.   ,85.   ,75.   ,55.   ,40.   ,20.   ,15.]

passos = range(2,100)
lista = []
for i in range(101,1000):
        if (3456/i,4608/i) not in lista:
                lista.append((3456/i,4608/i))
                passos.append(i)
passos.sort(reverse=0)

print passos
pesos = np.matrix(pesos);
if __name__ == "__main__":
        for metodo in ["PASSO_ROI_PRETO"]:
                it = 50
                for percent in passos:
                        obj = rodada(it,7)
                        obj.pesos = pesos
                        obj.pesosCorr = pesosCorr
                        bd = ler_arquivo("GLCM_RESIZE/GLCM_{:03d}GScale.txt".format(percent))
                        bd = Normalizar(bd,len(bd),len(bd[0])-1)
                        for i in bd:
                                obj.GLCM.add_objeto(i)
                        obj.execIteractions(None)
                        obj.max_ace = 5070
                        obj.max_err = 3705
                        obj.save("OBJETOS/{:02d}-{}-{:03d}%-{:03d}Iteracoes_7C2T.pkl".format(PesosTipo,metodo,percent,it))
