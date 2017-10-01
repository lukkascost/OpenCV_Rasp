from Classes import *
att58 = [1, 2, 3, 4, 5, 7, 8, 9, 13, 15, 16, 17, 25, 29, 31, 32, 33, 49, 57, 61, 63, 64, 65, 97, 113, 121, 125, 127, 128, 129, 130, 132, 136, 144, 160, 192, 193, 194, 196, 200, 208, 224, 225, 226, 228, 232, 240, 241, 242, 244, 248, 249, 250, 252, 253, 254, 255,256]

def LBP_img(img, att58):
        histogran = np.zeros(258)
        for i in range(1,img.shape[0]-1):
                for j in range(1,img.shape[1]-1):
                        central = img[i,j]                        
                        p11 = int(img[i-1,j-1] < central)
                        p12 = int(img[i-1,j]   < central)
                        p13 = int(img[i-1,j+1] < central)       
                        p21 = int(img[i,j-1]   < central)
                        p23 = int(img[i,j+1]   < central)
                        p31 = int(img[i+1,j-1] < central)
                        p32 = int(img[i+1,j]   < central)
                        p33 = int(img[i+1,j+1] < central)
                        output = p13 + p23*2 + p33*4 + p32*8 + p31*16 + p21*32 + p11*64 + p12*128
                        histogran[output] += 1
                        if not(output in att58):
                                histogran[-2]+=1
        return histogran
passos = []
lista = []
for i in range(1,1000):
        if (3456/i,4608/i) not in lista:
                lista.append((3456/i,4608/i))
                passos.append(i)
passos.sort(reverse=0)

#######################################################################################################################################
#for k in passos:        
        #print k
        #bd = []
        #for i in range(1,8):
                #print i      
                #for j in range(1,51):
			#print i,j
                        #img = cv2.imread("../../couro_images_semfundo/c{}_{}.JPG".format(i,j),0)
                        #img = resize_img_passo(img,k)
                        #lbp = LBP_img(img, att58)
                        #lbp[-1] = i
                        #bd.append(lbp)
                #Salvar_arquivo(bd,"LBP/FEATURES_M{}.txt".format(k))
#######################################################################################################################################
nclasses = 7        
positions = [x for x in range(257)]
for metodo in ["PASSO_ROI_PRETO"]:
        it = 50
        for percent in passos:
                print percent
                obj = rodada(it,nclasses,nAtrib=257,nTreino=13, nAmostras=50)
                bd = ler_arquivo("LBP/FEATURES_M{:d}.txt".format(percent))
                bd = Normalizar(bd,len(bd),len(bd[0])-1)
                for i in bd:
                        obj.GLCM.add_objeto(i)
                for i in range(it):
                        obj.iteracoes[i].conj_treino,obj.iteracoes[i].conj_teste = obj.GLCM.extrai_treino_teste(obj.num_cls,obj.iteracoes[i].nTreino,obj.iteracoes[i].nTeste,1)  
                        train = []
                        trainLabel = []
                        for k in obj.iteracoes[i].conj_treino:
                                train.append(obj.GLCM.getNewAtrib(k,positions))
                                trainLabel.append(obj.GLCM.labels[k])
                        
                        obj.iteracoes[i].svm_params = dict(kernel_type = cv2.SVM_RBF,
                                                                    svm_type = cv2.SVM_C_SVC,
                                                                    gamma=2.0,
                                                                    nu = 0.0,
                                                                    p = 0.0,
                                                                    coef0 = 0)
                        svm = cv2.SVM()
                        svm.train(np.float32(train),np.float32(trainLabel),params = obj.iteracoes[i].svm_params)
                        for k in obj.iteracoes[i].conj_teste:
                                sample = np.float32(obj.GLCM.getNewAtrib(k, positions))
                                res = int(svm.predict(sample))
                                test = int(obj.GLCM.labels[k])
                                obj.iteracoes[i].dados[test,res]+=1
                        obj.iteracoes[i].set_acuracia()
                        obj.sum_cfm = np.add(obj.sum_cfm,obj.iteracoes[i].dados) 
                obj.save("OBJETOS/LBP_{:02d}-{}-{:03d}%-{:03d}Iteracoes_7C3T.pkl".format(2,255,percent,it))
#######################################################################################################################################
lin1 = ""
lin2 = ""
lin3 = ""
lin4 = ""
for percent in passos:
        obj = rodada(1, 1)
        obj = obj.load("OBJETOS/LBP_{:02d}-{}-{:03d}%-{:03d}Iteracoes_7C3T.pkl".format(2,255,percent,50))
	p2 = [x for x in range(1,257)]
	obj.execIteractions(p2)
        lin1+=  "{:02.04f}\t".format(obj.get_avg_acc()[0][-1][0])
        p2 = [1, 2, 3, 4, 5, 7, 8, 9, 13, 15, 16, 17, 25, 29, 31, 32, 33, 49, 57, 61, 63, 64, 65, 97, 113, 121, 125, 127, 128, 129, 130, 132, 136, 144, 160, 192, 193, 194, 196, 200, 208, 224, 225, 226, 228, 232, 240, 241, 242, 244, 248, 249, 250, 252, 253, 254, 255, 256, 257]
        obj.execIteractions(p2)
        lin2+=  "{:02.04f}\t".format(obj.get_avg_acc()[0][-1][0])
        p2 = [2, 33, 128, 193, 244, 248, 249, 250, 254, 256, 257]
        obj.execIteractions(p2)
        lin3+=  "{:02.04f}\t".format(obj.get_avg_acc()[0][-1][0])
        #p2 = [1,2,5,9,15,16,17,21,22,23]
        #obj.execIteractions(p2)
        #lin4+=  "{:02.04f}\t".format(obj.get_avg_acc()[0][-1][0])
        print lin1
        print lin2
        print lin3
        print lin4
        print "\n\n"
