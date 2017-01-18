import os
from Metodos import *
address ="DataBase/SVM_Vectors.txt"
Teste = ler_arquivo("DataBase/teste.txt")
TesteLabel = ler_arquivo("DataBase/testeLabel.txt")
ResultadoSvmTreino = ler_arquivo("DataBase/resultadosSVM_TREINO.txt")
Vetores = cv2.SVM()
Vetores.load(address)

acerto = 0
acerto2 = 0
erro = 0
print "Total: ", len(Teste)
for tsample in range(len(Teste)):
    res = float(Vetores.predict(np.float32(Teste[tsample])))
    test = float(TesteLabel[tsample][0])
    resul = float(ResultadoSvmTreino[tsample][0])
    if (test!=res):erro = erro +1
    else: acerto = acerto+1
    if(resul == res): acerto2 = acerto2 +1
print "Acertos = ",acerto," Erros: ", erro," Acertos entre SVMs:", acerto2
