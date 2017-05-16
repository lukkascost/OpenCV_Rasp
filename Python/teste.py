from Metodos import *
import svmlight as sl
positions = [1,3,5,14]
obj = rodada(50, 7, nAtrib=14).load("OBJETOS/COMBINACOES/02-[1, 3, 5, 14]-001%-050Iteracoes_7C3T.pkl")
train = []
trainLabel =[]
for k in obj.iteracoes[0].conj_treino:
    train.append(obj.GLCM.getNewAtrib(k,positions))
    trainLabel.append(obj.GLCM.labels[k])
    
Training_data = []
for i,j in enumerate(train):
    newj = []
    for o,k in enumerate(j):
        newj.append((o,k))
    Training_data.append(tuple([trainLabel[i]]+[newj]))
Training_data = tuple(Training_data)  
model = sl.learn(Training_data, kernel="rbf",rbf_gamma=2.0,verbosite=0)
sl.write_model(model, "teste.svml")
Testing_data = []
for i,j in enumerate(obj.iteracoes[0].conj_teste):
    newj = []
    for o,k in enumerate(obj.GLCM.atributos[j]):
        if o+1 in positions:
            newj.append((positions.index(o+1),k))
    Testing_data.append([obj.GLCM.labels[j]]+[newj])
Training_data = tuple(Training_data)
predictions = sl.classify(model, tuple(Testing_data))
print predictions