 # QUESTION: sera qye eg assun?

from Classes import *
metodo = "PASSO_ROI_PRETO"
percent = 4
classes = 7
treino = 13
it=50
obj = rodada(it,classes , nTreino = treino)
oIt = iteracao(classes,treino,amostras = 50)
bd = ler_arquivo("GLCM_RESIZE/{}/GLCM_{:d}00.txt".format(metodo,percent))
bd = Normalizar(bd,len(bd),len(bd[0])-1)
for i in bd:
    obj.GLCM.add_objeto(i)
oIt.conj_treino,oIt.conj_teste = obj.GLCM.extrai_treino_teste(obj.num_cls,oIt.nTreino,oIt.nTeste,2)

print obj.GLCM.labels
print oIt.conj_treino
print oIt.conj_teste
