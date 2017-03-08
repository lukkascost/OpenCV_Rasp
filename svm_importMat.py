import os
from Metodos import *


metodo = "INTER_AREA"
for i in range(1,2):
    address ="Resultados/"+metodo+"/"
    esc_err_tab_res = np.load(address+"EscErr"+str(i)+"percentMat.npy")
    esc_cor_tab_res = np.load(address+"EscAce"+str(i)+"percentMat.npy")
    acc_tab_res = np.load(address+"Acc"+str(i)+"percentMat.npy")
    conf_mat = np.load(address+"ConfMat"+str(i)+"percentMat.npy")
    acc_tab_res[7] = np.sort(acc_tab_res[7])
    for iteracao in range(1,6):
        print acc_tab_res[7,len(acc_tab_res[7])-iteracao]
        
