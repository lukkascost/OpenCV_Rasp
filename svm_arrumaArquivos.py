from Metodos import *
address ="DataBase/SVM_Vectors.txt"
#Teste = ler_arquivo("DataBase/teste.txt")
#TesteLabel = ler_arquivo("DataBase/testeLabel.txt")
#ResultadoSvmTreino = ler_arquivo("DataBase/resultadosSVM_TREINO.txt")
#Vetores = cv2.SVM()
#Vetores.load(address)

addressBanco = "DataBase/DB_GLCM.txt"
bd = PassaBancoDeDadosParaMat(addressBanco)
bdreal = []
for i in range(50):
    bdreal.append(bd[i+0])
    bdreal.append(bd[i+50])
    bdreal.append(bd[i+100])
    bdreal.append(bd[i+150])
    bdreal.append(bd[i+200])
    bdreal.append(bd[i+250])
    bdreal.append(bd[i+300])

Salvar_arquivo(bdreal,"DataBase/DB_GLCM_MIX.txt")
treino = []
treinoLb = []
teste = []
testelb = []
for i in range(250):
    treino.append([])
    treinoLb.append([])
    for j in range(10):
        if(j!=9):
            treino[i].append(bdreal[i][j])
        else:
            treinoLb[i].append(bdreal[i][j])

for i in range(250,350):
    teste.append([])
    testelb.append([])
    for j in range(10):
        if(j!=9):
            teste[i-250].append(bdreal[i][j])
        else:
            testelb[i-250].append(bdreal[i][j])

Salvar_arquivo(treino, "DataBase/treinoAtrib.txt")
Salvar_arquivo(treinoLb, "DataBase/treinoLabel.txt")
Salvar_arquivo(teste,"DataBase/teste.txt")
Salvar_arquivo(testelb,"DataBase/testeLabel.txt")
               

#acerto = 0
#acerto2 = 0
#erro = 0
#print "Total: ", len(Teste)
#for tsample in range(len(Teste)):
#    res = float(Vetores.predict(np.float32(Teste[tsample])))
#    test = float(TesteLabel[tsample][0])
#    resul = float(ResultadoSvmTreino[tsample][0])
#    if (test!=res):erro = erro +1
#    else: acerto = acerto+1
#    if(resul == res): acerto2 = acerto2 +1
#print "Acertos = ",acerto," Erros: ", erro," Acertos entre SVMs:", acerto2
