## SVM - OpenCV 2.4.13
from Metodos import *
address ="DataBase/glcm_mix.txt"
addressSave = "DataBase/SVM_Vectors.txt"
## inicializa as variaveis com o numero de objetos e o numero de atributos.
objetos, atributos =  GetObjetosAtributos(address)
## Carrega o arquivo no Banco de dados no formato MAT
BancoDeDados = PassaBancoDeDadosParaMat(address,objetos,atributos)
## Nomaliza o banco de dados.
BancoDeDados = Normalizar(BancoDeDados,objetos,atributos)
## cria a partir do banco uma matriz com os atributos e uma somente com a label dos objetos
atrib , label = AtribuirValoresMatrizes(BancoDeDados,objetos,atributos+1)
## Atribui a quantidade de classes que existem.
quantidadeClasses = int(max(label)[0])+1
## Cria um vetor que guarda quantos objetos de cada classe existem. Num[0] = numero de objetos da classe 0
NumObjPorClasse = GetQuantidadeDeObjetosPorClasse(label)
## Informado pelo usuario: Percentual de Treino
perTreino = 80.0
## percentual de testes.
perTeste = 100.0 - perTreino
## criacao das matrizes de treino e testes
Treino = np.zeros((int(objetos*(perTreino/100)),atributos))
TreinoLabel = np.zeros((int(objetos*(perTreino/100)),1))
Teste = np.zeros((int(objetos*(perTeste/100)),atributos))
TesteLabel = np.zeros((int(objetos*(perTeste/100)),1))
## Aplica o metodo leave_on_out
perTreino, perTeste, quantidadeClasses, NumObjPorClasse, atributos, objetos, label, atrib, Treino, Teste, TreinoLabel, TesteLabel = leave_on_out(perTreino, perTeste, quantidadeClasses, NumObjPorClasse, atributos, objetos, label, atrib, Treino, Teste, TreinoLabel, TesteLabel)
Salvar_arquivo(Treino,"DataBase/treinoAtrib.txt")
Salvar_arquivo(TreinoLabel,"DataBase/treinoLabel.txt")
Salvar_arquivo(TesteLabel,"DataBase/testeLabel.txt")
Salvar_arquivo(Teste,"DataBase/teste.txt")
ResultadoSvmTreino = []
## Uso da Biblioteca do SVM padrao do OpenCv.
##  kernel_type = SVM_LINEAR, SVM_RBF, SVM_POLY, SVM_SIGMOID.
svm_params = dict( kernel_type = cv2.SVM_LINEAR, svm_type = cv2.SVM_C_SVC,C=179,degree =1, gamma=20 , nu = 0.0, p = 0.0, class_weights = None)
svm = cv2.SVM()
svm.train(np.float32(Treino),np.float32(TreinoLabel),params=svm_params)
## Salva vetores suporte do treinamento.
svm.save(addressSave)
acerto = 0
erro = 0
for tsample in range(int(objetos*(perTeste/100))):
    test_sample = np.float32(Teste[tsample])
    res = int(svm.predict(test_sample))
    test = int(TesteLabel[tsample][0])
    ResultadoSvmTreino.append([float(res)])
    if(test!=res): erro = erro +1
    else:  acerto = acerto +1
#print "Taxa de acerto:", float((acerto*100))/float((acerto+erro))
Salvar_arquivo(ResultadoSvmTreino, "DataBase/resultadosSVM_TREINO.txt")
