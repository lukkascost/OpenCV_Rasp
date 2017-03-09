import os
from Metodos import *


metodo = "INTER_AREA"


medias = np.zeros((101,3,8,1))
for i in range(1,31):
    address ="Resultados/"+metodo+"/"
    esc_err_tab_res = np.load(address+"EscErr"+str(i)+"percentMat.npy")
    esc_cor_tab_res = np.load(address+"EscAce"+str(i)+"percentMat.npy")
    acc_tab_res = np.load(address+"Acc"+str(i)+"percentMat.npy")
    conf_mat = np.load(address+"ConfMat"+str(i)+"percentMat.npy")
    medias[i,0] =  five_best_avg(np.copy(acc_tab_res))
    medias[i,1] =  five_best_avg(np.copy(esc_err_tab_res))
    medias[i,2] =  five_best_avg(np.copy(esc_cor_tab_res))

strAcc = [];
for j in range(3):
    strAcc.append([])
    for i in range(8):
        strAcc[j].append([])
for i in range(3):
    for j in range(101):
        ##print ("TIPO {:01d} PORCENTAGEM: {:03d}".format(i,j))
        if (medias[j,i,7,0] != 0):
            for k in range(len(medias[j,i])):
                strAcc[i][k].append(("{:03.1f}".format(medias[j,i,k,0])))
        
for j in range(3):
    stri = ""
    for i in range(8):
        stri+="\nClasse "+str(i)+";"
        for k in strAcc[j][i]:
            stri+=k+";"
    print stri

