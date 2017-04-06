from Metodos import *
import matplotlib.pyplot as plt

smetodo = ["PASSO_ROI","PASSO_ROI_PRETO","PASSO_DECIMACAO"]
#smetodo = ["INTER_LANCZOS4","INTER_LINEAR","INTER_AREA","INTER_CUBIC","INTER_NEAREST","DECIMACAO","ROI","ROI_PRETO"]
de = 70
ate = 99
conf_mat = np.zeros((100,50,7,7))
for metodo in smetodo:
    totais = np.zeros((4,101,1))
    medias = np.zeros((101,4,8,1))
    for i in range(de,ate+1):
        address ="Resultados_real/"+metodo+"/"
        esc_err_tab_res = np.load(address+"EscErr"+str(i)+"percentMat.npy")
        esc_cor_tab_res = np.load(address+"EscAce"+str(i)+"percentMat.npy")
        acc_tab_res = np.load(address+"Acc"+str(i)+"percentMat.npy")
        conf_mat[i] = np.load(address+"ConfMat"+str(i)+"percentMat.npy")
        conf_mat_preco = np.load(address+"ConfMatP"+str(i)+"percentMat.npy")        
        lucro = np.zeros((8,50))
        for k in range(50):
            for j in range(7):
                lucro[j,k]+=sum(conf_mat_preco[k,j])
                lucro[7,k]+=sum(conf_mat_preco[k,j])
        medias[i,0] =  five_best_avg(np.copy(acc_tab_res))
        totais[0,i,0] =  avg(acc_tab_res)[7]
        medias[i,1] =  five_Worst_avg(np.copy(esc_err_tab_res))
        totais[1,i,0] = avg( esc_err_tab_res)[7]
        medias[i,2] =  five_best_avg(np.copy(esc_cor_tab_res))
        totais[2,i,0] = avg( esc_cor_tab_res)[7]
        medias[i,3] =  five_best_avg(np.copy(lucro))
        totais[3,i,0] = avg( lucro)[7]
    strAcc = []  
    s = np.zeros((4,101,1))
    for j in range(4):
        strAcc.append([])
        for i in range(8):
            strAcc[j].append([])
    for i in range(4):
        for j in range(101):
            ##print ("TIPO {:01d} PORCENTAGEM: {:03d}".format(i,j))
            if (medias[j,i,7,0] != 0):
                for k in range(len(medias[j,i])):
                    strAcc[i][k].append(("{:03.1f}".format(medias[j,i,k,0])))
                    s[i,j,0]= medias[j,i,7,0]
    for j in range(4):
        stri = ""
        for i in range(8):
            stri+="\nClasse "+str(i)+";"
            for k in strAcc[j][i]:
                stri+=k+";"
        
    t = np.arange(de, ate+1, 1)
    escreal = np.add(totais[2,de:ate+1],np.dot(-1,totais[1,de:ate+1]))
    plt.plot(t,totais[0,de:ate+1],label="Acuracia t")
    #plt.plot(t,escreal,label="Escore Real")
    plt.plot(t,s[1,de:ate+1],label="erro 5")
    plt.plot(t,totais[1,de:ate+1],label="erro t")
    plt.plot(t,s[2,de:ate+1],label="Acerto 5")
    plt.plot(t,totais[2,de:ate+1],label="Acerto t")
    plt.plot(t,s[3,de:ate+1],label="Lucro 5")
    #plt.plot(t,totais[3,de:ate+1],label="Lucro t")

    plt.ylim([0,5070])
    plt.xlim([de,ate])

    plt.legend(bbox_to_anchor=(1, 1), bbox_transform=plt.gcf().transFigure)
    plt.xlabel('resize (%)')
    plt.ylabel('Pontos')
    plt.title("real_"+metodo)
    plt.grid(True)
    plt.savefig("Resultados_real/graficos-"+metodo+"--"+str(de)+"-a-"+str(ate)+".png",bbox_inches='tight',dpi=400)
    ##plt.show()
    plt.gcf().clear()

