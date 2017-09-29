from Classes import *

def LBP_img(img):
        output = np.zeros(img.shape[:2])
        for i in range(1,output.shape[0]-1):
                for j in range(1,output.shape[1]-1):
                        central = img[i,j]                        
                        p11 = int(img[i-1,j-1] < central)
                        p12 = int(img[i-1,j]   < central)
                        p13 = int(img[i-1,j+1] < central)       
                        p21 = int(img[i,j-1]   < central)
                        p23 = int(img[i,j+1]   < central)
                        p31 = int(img[i+1,j-1] < central)
                        p32 = int(img[i+1,j]   < central)
                        p33 = int(img[i+1,j+1] < central)
                        output[i,j] = p13 + p23*2 + p33*4 + p32*8 + p31*16 + p21*32 + p11*64 + p12*128
        return np.histogram(output, bins=[x for x in range(256)]), output
passos = []
lista = []
for i in range(1,1000):
        if (3456/i,4608/i) not in lista:
                lista.append((3456/i,4608/i))
                passos.append(i)
passos.sort(reverse=1)

#######################################################################################################################################
#for k in [1]:        
        #print k
        #bd = []
        #for i in range(1,8):
                #for j in range(1,51):
                        #img = cv2.imread("../../couro_images_semfundo/c{}_{}.JPG".format(i,j),0)
                        #print i,j 
                        #img = resize_img_passo(img,k)
                        #lbp = LBP_img(img)
                        #bd.append(lbp[0][0])
                        #Salvar_arquivo(bd,"LBP/FEATURES_M{}.txt".format(k))
#######################################################################################################################################
for metodo in ["PASSO_ROI_PRETO"]:
        it = 50
        for percent in passos:
                print percent
                obj = rodada(it,nclasses,nAtrib=24,nTreino=10, nAmostras=40)
                bd = ler_arquivo("GLCM_RESIZE/DECIMACAO_BASE_LEANDRO/FEATURES_M{:d}.txt".format(percent))
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
                obj.save("OBJETOS/{:02d}-{}-{:03d}%-{:03d}Iteracoes_7C3T.pkl".format(PesosTipo,positions,percent,it))
                
