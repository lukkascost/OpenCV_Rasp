
from Metodos import *
import random
addressSave = "DataBase/SVM_Vectors.txt"
Resultado = ""
acc = np.zeros((8,2))
soma = np.zeros(8)
bd = ler_arquivo("DataBase/DB_GLCM.txt")
bd = Normalizar(bd,len(bd),9)
iteracoes = 50

tab_res = np.zeros((8,iteracoes))
for i in range (8):
        acc[i][0] = 100.0
for x in range(iteracoes):
        print "iteracao",x+1
        Resultado += "\n--------------Iteracao "+str(x) + "-------------------"
        atributos = []
        labels = []
        TreinoLabel = []
        Treino = []
        qtdtreino = 37
        qtdguard = qtdtreino
        qtdTeste = 49-qtdtreino
       
        for i in bd:
                atributos.append(i[:9])
                labels.append([i[-1]])
        while(qtdtreino>0):
                ##Atributo da classe 0 
                rd = random.randint(0,qtdTeste+qtdtreino)
                Treino.append(atributos[rd])
                TreinoLabel.append(labels[rd])
                del atributos[rd]
                del labels[rd]
                qtdtreino -=1
        qtdtreino = qtdguard
        while(qtdtreino>0):
                ##Atributo da classe 1
                rd = ((qtdTeste+1)*1) + random.randint(0,qtdTeste+qtdtreino)
                Treino.append(atributos[rd])
                TreinoLabel.append(labels[rd])
                del atributos[rd]
                del labels[rd]
                qtdtreino -=1
        qtdtreino = qtdguard
        while(qtdtreino>0):
                ##Atributo da classe 2
                rd = ((qtdTeste+1)*2) + random.randint(0,qtdTeste+qtdtreino)
                Treino.append(atributos[rd])
                TreinoLabel.append(labels[rd])
                del atributos[rd]
                del labels[rd]
                qtdtreino -=1
        qtdtreino = qtdguard
        while(qtdtreino>0):
                ##Atributo da classe 3
                rd = ((qtdTeste+1)*3) + random.randint(0,qtdTeste+qtdtreino)
                Treino.append(atributos[rd])
                TreinoLabel.append(labels[rd])
                del atributos[rd]
                del labels[rd]
                qtdtreino -=1
        qtdtreino = qtdguard
        while(qtdtreino>0):
                ##Atributo da classe 4
                rd = ((qtdTeste+1)*4) + random.randint(0,qtdTeste+qtdtreino)
                Treino.append(atributos[rd])
                TreinoLabel.append(labels[rd])
                del atributos[rd]
                del labels[rd]
                qtdtreino -=1
        qtdtreino = qtdguard
        while(qtdtreino>0):
                ##Atributo da classe 5
                rd = ((qtdTeste+1)*5) + random.randint(0,qtdTeste+qtdtreino)
                Treino.append(atributos[rd])
                TreinoLabel.append(labels[rd])
                del atributos[rd]
                del labels[rd]
                qtdtreino -=1
        qtdtreino = qtdguard
        while(qtdtreino>0):
                ##Atributo da classe 6
                rd = ((qtdTeste+1)*6) + random.randint(0,qtdTeste+qtdtreino)
                Treino.append(atributos[rd])
                TreinoLabel.append(labels[rd])
                del atributos[rd]
                del labels[rd]
                qtdtreino -=1
                
        ##Inicio do Treino
        Resultado +=  "\n  KERNEL_RBF "
        svm_params = dict(kernel_type = cv2.SVM_RBF,
        svm_type = cv2.SVM_C_SVC,
        C=7.0,
        degree =1.0,
        gamma=20.0,
        nu = 0.0,
        p = 0.0,
        coef0 = 10,
        class_weights = None,
        epsilon = 1e-6
        )
        svm = cv2.SVM()
        svm.train_auto(np.float32(Treino),np.float32(TreinoLabel),None,None ,params = svm_params)
        Resultado+= "\n  PARAMETROS AUTOMATICOS"
        #svm.train(np.float32(Treino),np.float32(TreinoLabel),params = svm_params)
        #print "   PARAMETROS ESTATICOS"

        svm.save(addressSave)
        acerto = 0
        erro = 0
        acertos = np.zeros(7)
        erros = np.zeros(7)
        for tsample in range(len(atributos)):
                test_sample = np.float32(atributos[tsample])
                res = int(svm.predict(test_sample))
                test = int(labels[tsample][0])
                if(test!=res):
                        erro = erro +1
                        erros[test] = erros[test]+1
                else:
                        acerto = acerto +1
                        acertos[test] = acertos[test] +1
        tab_res[7,x] =  float((acerto*100))/float((acerto+erro))
        Resultado+= "\nTaxa de acerto:"+str(tab_res[7][x])
        Resultado+= "\n Acertos = "+str(acerto)+" Erros: "+ str(erro)
        
        soma[7]+= tab_res[7][x]
        if tab_res[7][x] > acc[7][1] :
                acc[7][1] = tab_res[7][x]
        if tab_res[7][x] < acc[7][0] :
                acc[7][0] = tab_res[7][x]
        
        for i in range(7):
                tab_res[i][x] = (acertos[i]*100/(acertos[i]+erros[i]))
                soma[i]+= tab_res[i][x]
                Resultado += "\nClasse "+str(i)+" Acc = "+str(tab_res[i][x])+" Acertos "+str(acertos[i])+"  Erros "+str(erros[i])
                if tab_res[i][x]< acc[i][0]:
                        acc[i][0] = tab_res[i][x]
                if tab_res[i][x] > acc[i][1]:
                        acc[i][1] = tab_res[i][x]
tab_des = np.zeros(8)
for i in range(8):
        sum_desvio = 0
        for j in range(iteracoes):
                sum_desvio += mp.pow((tab_res[i,j]-(soma[i]/iteracoes)),2)
        sum_desvio = sum_desvio/(iteracoes-1)
        tab_des[i] = mp.sqrt(sum_desvio)
Resultado += "\n-----------RESULTADOS-------------"
for i in range(7):
        Resultado += "\nClasse "+str(i)+":\n\tAcc Minima = "+str(acc[i][0])+"%\n\tAcc Maxima = "+str(acc[i][1])+"%\n\tAcc Media = "+str(soma[i]/iteracoes)+"\n\tDesvio = "+str(tab_des[i])
Resultado += "\n Acc total das Classes: \n\tMinima= "+ str(acc[7][0])+"% \n\tMaxima = "+str(acc[7][1])+ "%\n\tMedia = "+str(soma[7]/iteracoes)+"\n\tDesvio = "+str(tab_des[7])
print Resultado

Salvar_texto(Resultado,"DataBase/Resultados_iter.txt")
