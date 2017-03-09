from Metodos import *
import matplotlib.pyplot as plt
import matplotlib.pyplot as plt2


metodo = "INTER_LINEAR"

totais = np.zeros((3,101,1))
medias = np.zeros((101,3,8,1))
for i in range(1,40):
    address ="Resultados/"+metodo+"/"
    esc_err_tab_res = np.load(address+"EscErr"+str(i)+"percentMat.npy")
    esc_cor_tab_res = np.load(address+"EscAce"+str(i)+"percentMat.npy")
    acc_tab_res = np.load(address+"Acc"+str(i)+"percentMat.npy")
    conf_mat = np.load(address+"ConfMat"+str(i)+"percentMat.npy")
    medias[i,0] =  five_best_avg(np.copy(acc_tab_res))
    totais[0,i,0] =  avg(acc_tab_res)[7]
    medias[i,1] =  five_best_avg(np.copy(esc_err_tab_res))
    totais[1,i,0] = avg( esc_err_tab_res)[7]
    medias[i,2] =  five_best_avg(np.copy(esc_cor_tab_res))
    totais[2,i,0] = avg( esc_cor_tab_res)[7]



strAcc = [];
s = np.zeros((3,101,1))
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
                s[i,j,0]= medias[j,i,7,0]

for j in range(3):
    stri = ""
    for i in range(8):
        stri+="\nClasse "+str(i)+";"
        for k in strAcc[j][i]:
            stri+=k+";"
    #print stri

t = np.arange(0, 101, 1)
plt.plot(t,s[0],label="Acuracia 5")
plt.plot(t,totais[0],label="Acuracia t")
plt.plot(t,s[1],label="erro 5")
plt.plot(t,totais[1],label="erro t")
plt.plot(t,s[2],label="Acerto 5")
plt.plot(t,totais[2],label="Acerto t")


plt.legend(bbox_to_anchor=(1, 1), bbox_transform=plt.gcf().transFigure)
#plt.legend(bbox_to_anchor=(0., 1.02, 1., .102), loc=3, ncol=2, mode="expand", borderaxespad=0.)
#plt.legend([l1,l2,l3],["1","2","3"])
plt.xlabel('resize (%)')
plt.ylabel('Pontos')
#plt.title('About as simple as it gets, folks')
plt.grid(True)
plt.show()

