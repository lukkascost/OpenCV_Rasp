# -*- coding: cp1252 -*-

from Metodos import *

##Resultados no nivel de proporcao da imagem
rs = np.zeros((8,100,2))
##Variavel para contar o numero de resolucoes testadas
cont = 0
########################################################################################################################################################

#Pesos de erro para calculo do Score_error
pesos = [[  0.   ,1.   ,2.   ,3.   ,4.   ,5.   ,6.],
         [  1.   ,0.   ,1.   ,2.   ,3.   ,4.   ,5.],
         [  2.   ,1.   ,0.   ,1.   ,2.   ,3.   ,4.],
         [  3.   ,2.   ,1.   ,0.   ,1.   ,2.   ,3.],
         [  4.   ,3.   ,2.   ,1.   ,0.   ,1.   ,2.],
         [  5.   ,4.   ,3.   ,2.   ,1.   ,0.   ,1.],
         [  6.   ,5.   ,4.   ,3.   ,2.   ,1.   ,0.]]
pesos = np.matrix(pesos);
########################################################################################################################################################


## Laço que define as resoluçoes 
for percent in range(10,11,10):
        cont +=1
        ## Endereço para guardar os vetores suporte;
        addressSave = "Resultados/SVM_Vectors"+str(percent)+".txt"
        ########################################################################################################################################################

        ## Variavel com o texto que vai ser inserido no Arquivo de Resultados;
        Resultado = ""
        ########################################################################################################################################################

        ## Variaveis relacionadas ao arquivo que contem a saida do GLCM         
        bd = ler_arquivo("GLCM_RESIZE/GLCM_"+str(percent)+".0.txt")       ##Ex. GLCM_RESIZE/GLCM_10.0.txt para 10% da imagem original
        bd = Normalizar(bd,len(bd),len(bd[0])-1)                          ##Normaliza Banco
        iteracoes = 50                                                    ## Numero de iteraçoes para re-treinamento
        ########################################################################################################################################################

        ##Variaveis Referente a Acuracia
        acc = np.zeros((8,2))                           ## minimos[x][0] e maximos[x][1] onde x é a classe  
        acc_soma = np.zeros(8)                          ## Valor absoluto da soma das acuracias da classe[x]
        acc_tab_des = np.zeros(8)                       ## Desvio padrao da classe[x]
        acc_tab_res = np.zeros((8,iteracoes))           ## Tabela de resultados da acuracia [x][y] da classe[x] na iteraçao[y]
        ########################################################################################################################################################
        
        conf_mat = np.zeros((iteracoes,7,7))        ## Tabela contendo a matriz confusao [x][y][z], iteração[x], elemento da classe[y], predict[z]
        
        ##Variaveis Referente a Calculo do Escore de Erro
        esc_err = np.zeros((8,2))                       ## minimos[x][0] e maximos[x][1] onde x é a classe  
        esc_err_soma = np.zeros(8)                      ## Valor absoluto da soma dos escores de erro da classe[x]
        esc_err_tab_des = np.zeros(8)                   ## Desvio padrao do escore de erro da classe[x]
        esc_err_tab_res = np.zeros((8,iteracoes))       ## Tabela de resultados da acuracia [x][y] da classe[x] na iteraçao[y]
        ########################################################################################################################################################
        
        for i in range (8):
                acc[i][0] = 100.0
        for x in range(iteracoes):
                Resultado += "\n------------------------------------------Iteracao "+str(x) + "-----------------------------------------------"
                atributos = []
                labels = []
                TreinoLabel = []
                Treino = []
                qtdtreino = 37
                qtdTeste = 49-qtdtreino
               
                for i in bd:
                        atributos.append(i[:9])
                        labels.append([i[-1]-1])
                Salvar_arquivo(atributos,"GLCM_RESIZE/GLCM_A_"+str(percent)+"N.txt")
                
                ##Atributo da classe 0
                atributos,labels,Treino,TreinoLabel =  Train_extract(atributos,labels,0,qtdtreino,qtdTeste,Treino,TreinoLabel)
                ########################################################################################################################################################
                
                ##Atributo da classe 1
                atributos,labels,Treino,TreinoLabel =  Train_extract(atributos,labels,1,qtdtreino,qtdTeste,Treino,TreinoLabel)
                ########################################################################################################################################################
                
                ##Atributo da classe 2
                atributos,labels,Treino,TreinoLabel =  Train_extract(atributos,labels,2,qtdtreino,qtdTeste,Treino,TreinoLabel)
                ########################################################################################################################################################
                
                ##Atributo da classe 3
                atributos,labels,Treino,TreinoLabel =  Train_extract(atributos,labels,3,qtdtreino,qtdTeste,Treino,TreinoLabel)
                ########################################################################################################################################################
                
                ##Atributo da classe 4
                atributos,labels,Treino,TreinoLabel =  Train_extract(atributos,labels,4,qtdtreino,qtdTeste,Treino,TreinoLabel)
                ########################################################################################################################################################
                
                ##Atributo da classe 5
                atributos,labels,Treino,TreinoLabel =  Train_extract(atributos,labels,5,qtdtreino,qtdTeste,Treino,TreinoLabel)
                ########################################################################################################################################################
                
                ##Atributo da classe 6
                atributos,labels,Treino,TreinoLabel =  Train_extract(atributos,labels,6,qtdtreino,qtdTeste,Treino,TreinoLabel)
                ########################################################################################################################################################
                
                ##Inicio do Treino
                Resultado +=  "\n  ...........KERNEL_RBF GAMMA 2..........."
                
                ## PARAMETROS DE TREINO QUANDO NAO FOR AUTOMATICO
                svm_params = dict(kernel_type = cv2.SVM_RBF,
                svm_type = cv2.SVM_C_SVC,
                C=7.0,
                degree =1.0,
                gamma=2.0,
                nu = 0.0,
                p = 0.0,
                coef0 = 0,
                class_weights = None,
                epsilon = 1e-6
                )
                ########################################################################################################################################################
                
                svm = cv2.SVM()

                ## TIPO DE TREINO: AUTOMATICO OU ESTATICO.
                
                #svm.train_auto(np.float32(Treino),np.float32(TreinoLabel),None,None ,params = svm_params)
                #Resultado+= "\n  PARAMETROS AUTOMATICOS"
                svm.train(np.float32(Treino),np.float32(TreinoLabel),params = svm_params)
                Resultado+= "\n  ...........PARAMETROS ESTATICOS..........."
                ########################################################################################################################################################

                
                ## VARIAVEIS PARA O CALCULO DA ACURACIA
                acerto = 0
                erro = 0
                acertos = np.zeros(7)           ## Numero de Acertos[x] da classe x;
                erros = np.zeros(7)             ## Numero de Erros[x] da classe x;
                ########################################################################################################################################################

                ## CALCULO DA ACURACIA 
                for tsample in range(len(atributos)):
                        test_sample = np.float32(atributos[tsample])
                        res = int(svm.predict(test_sample))
                        test = int(labels[tsample][0])
                        conf_mat[x,test,res] +=1
                        if(test!=res):
                                erro = erro +1
                                erros[test] = erros[test]+1
                        else:
                                acerto = acerto +1
                                acertos[test] = acertos[test] +1
                ########################################################################################################################################################

                ## CALCULO DO ESCORE DE ERROS 
                score_err = 0                                                                           ## VALOR ESCORE DE ERROS
                resultado_score_err = ""                                                                ## TEXTO PARA SER INSERIDO NO ARQUIVO DE RESULTADOS
                for i in range(len(conf_mat[x])):                                                       ## LACO DA CLASSE CORRETA [I]
                        for j in range(len(conf_mat[x][0])):                                            ## LAÇO DA CLASSE PREDICT [J]
                              esc_err_tab_res[i,x]+= conf_mat[x,i,j]*pesos[i,j]                         ## MULTIPLICACAO DO ELEMENTO[I][J] PELO PESO  
                              esc_err_tab_res[7,x]+= conf_mat[x,i,j]*pesos[i,j]                         ## ACUMULADO O ERRO PARA O RESULTADO GERAL
                        esc_err_soma[i]+= esc_err_tab_res[i,x]                                          ## SOMA ACUMULADA DO ESCORE RELACIONADO A CLASSE
                        resultado_score_err+= "\nEscore classe "+str(i)+": "+str(esc_err_tab_res[i,x])  ## PARA ARQUIVO DE TEXTO
                resultado_score_err+="\nTotal: "+str(esc_err_tab_res[7,x])                              ## PARA ARQUIVO DE TEXTO
                ########################################################################################################################################################
                
                ## Adicionando o resultado da acuracia geral das classes [7][x] 
                acc_tab_res[7,x] =  float((acerto*100))/float((acerto+erro))
                ########################################################################################################################################################

                Resultado+= "\nTaxa de acerto:"+str(acc_tab_res[7][x])
                Resultado+= "\n Acertos = "+str(acerto)+" Erros: "+ str(erro)

                
                ## soma da acuracia geral
                acc_soma[7]+= acc_tab_res[7][x]
                ########################################################################################################################################################

                ## Calculos para atualização de maximos gerais
                        ##Acuracia
                if acc_tab_res[7][x] > acc[7][1] :
                        acc[7][1] = acc_tab_res[7][x]
                        ##Escores de Erro
                
                ########################################################################################################################################################

                ## Calculos para atualização de minimos gerais 
                        ##Acuracia
                if acc_tab_res[7][x] < acc[7][0] :
                        acc[7][0] = acc_tab_res[7][x]
                        ##Escores de Erro
                if esc_err_tab_res[7][x] < esc_err[7][0] :
                        esc_err[7][0] = esc_err_tab_res[7][x]
                ########################################################################################################################################################

                ## Calculos para atualização de minimos das classes
                for i in range(7):                                                      ##  laço para classe [i]
                        acc_tab_res[i][x] = (acertos[i]*100/(acertos[i]+erros[i]))      ##  valor da acuracia em porcentagem da classe [i] na iteração[x]
                        acc_soma[i]+= acc_tab_res[i][x]                                 ##  acumula o valor da acuracia ta iteração atual na soma geral. 
                        Resultado += "\nClasse "+str(i)+" Acc = "+str(acc_tab_res[i][x])+" Acertos "+str(acertos[i])+"  Erros "+str(erros[i])

                        ## acuracia minima da classe [i] na iteração [x]
                        if acc_tab_res[i][x]< acc[i][0]:
                                acc[i][0] = acc_tab_res[i][x]

                        ## Escore de Erro minimo da classe [i] na iteração [x]
                        if esc_err_tab_res[i][x] < esc_err[i][0]:
                                esc_err_acc[i][0] = esc_err_acc_tab_res[i][x]

                        ## acuracia maxima da classe [i] na iteração [x]
                        if acc_tab_res[i][x] > acc[i][1]:
                                acc[i][1] = acc_tab_res[i][x]
                ########################################################################################################################################################
                
                Resultado+= "\n\n  ...........ESCORES DE ERRO..........." + resultado_score_err
                
                esc_err_soma[7] = score_err
                Resultado+= "\n\n  ...........MATRIZ CONFUSAO..........."
                Resultado+= "\n \t\t0\t1\t2\t3\t4\t5\t6"
                for i in range(len(conf_mat[x])):
                        Resultado+= "\n Classe "+str(i)+":"
                        for j in range(len(conf_mat[x][0])):
                                Resultado+= "\t"+str(conf_mat[x,i,j])
        for i in range(8):
                sum_desvio = 0
                for j in range(iteracoes):
                        sum_desvio += mp.pow((acc_tab_res[i,j]-(acc_soma[i]/iteracoes)),2)
                sum_desvio = sum_desvio/(iteracoes-1)
                acc_tab_des[i] = mp.sqrt(sum_desvio)
        Resultado += "\n------------------------------------------ RESULTADOS ------------------------------------------"
        for i in range(7):
                rs[i,(percent/10)-1,0] = acc_soma[i]/iteracoes
                rs[i,(percent/10)-1,1] = acc_tab_des[i]
                Resultado += "\nClasse "+str(i)+":"
                Resultado += "\n\tMinimos:\tAcc = "+str(acc[i][0])+"%\tErr_score = "+str(esc_err[i][0])
                Resultado += "\n\tMaximos:\tAcc = "+str(acc[i][1])+"%"
                Resultado += "\n\tMedias: \tAcc = "+str(acc_soma[i]/iteracoes)+"%\tErr_score = "+str(esc_err_soma[i]/iteracoes)
                Resultado += "\n\tDesvios:\tAcc = "+str(acc_tab_des[i])+"%"
        Resultado += "\nAcc total das Classes: "
        Resultado += "\n\tMinimos:\tAcc = "+ str(acc[7][0])+"%"
        Resultado += "\n\tMaximos:\tAcc = "+str(acc[7][1])+ "%"
        Resultado += "\n\tMedias: \tAcc = "+str(acc_soma[7]/iteracoes)+"%\tErr_Score = "+str(esc_err_soma[7]/iteracoes)
        Resultado += "\n\tDesvios:\tAcc = "+str(acc_tab_des[7])+"%"
        
        rs[7,(percent/10)-1,0]  = acc_soma[7]/iteracoes
        rs[7,(percent/10)-1,1]  = acc_tab_des[7]
        Salvar_texto(Resultado,"Resultados/Resultados_iter"+str(percent)+"percent.txt")
        
rsString = ""
for i in range(8):
        rsString += "\nClasse "+str(i)+";"
        for j in range(cont):
                #rsString+= str(round(rs[i,j,0],3))+";"+str(round(rs[i,j,1],3))+";"
                rsString+= str(round(rs[i,j,0],3))+";"+str(round(rs[i,j,1],3))+"\t"
#print rsString
print Resultado

