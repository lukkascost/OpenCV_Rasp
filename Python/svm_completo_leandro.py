from MachineLearn.Classes.experiment import Experiment
from MachineLearn.Classes.data_set import DataSet
from MachineLearn.Classes.data import Data
import numpy as np
import cv2

oExp = Experiment()
basemask = np.array([1,2,5,9,15,16,17,21,22,23,25])

###############################################################################################################################
#basemask = basemask-1
#for i in range(1):
        #oDataSet = DataSet()
        #base = np.loadtxt("GLCM_RESIZE/DECIMACAO_BASE_LEANDRO/FEATURES_M50_CM5b.txt",delimiter=",")
        #for k in base:
                #oDataSet.addSampleOfAtt(k[basemask])
        #oDataSet.normalizeDataSet()  
        #for j in range(50):
                #oData  = Data(15, 10, samples=40)
                #oData.randomTrainingTestPerClass()
                #svm = cv2.SVM()
                #oData.params = dict(kernel_type = cv2.SVM_RBF,svm_type = cv2.SVM_C_SVC,gamma=2.0,nu = 0.0,p = 0.0, coef0 = 0)
                #svm.train(np.float32( oDataSet.atributes[oData.Training_indexes]) , np.float32( oDataSet.labels[oData.Training_indexes]) , params = oData.params)
                #results = svm.predict_all(np.float32(oDataSet.atributes[oData.Testing_indexes])) 
                #oData.setResultsFromClassfier(results, oDataSet.labels[oData.Testing_indexes])
                #oDataSet.append(oData)
        #oExp.addDataSet(oDataSet, description="  50 execucoes M=50 base ROBOT ")
#oExp.save("OBJETOS/EXPERIMENTO_02_ACC_M50_50_ROBOT.txt")
#print oExp

###############################################################################################################################
oExp =  oExp.load("OBJETOS/EXPERIMENTO_02_ACC_M50_50_ROBOT.txt")
CMs =  [oExp.experimentResults[0].dataSet[x].confusion_matrix for x in range(50)] 
CMs = np.array(CMs)
np.savetxt("../../1.txt",np.average(CMs , axis=0), delimiter="\t", fmt="%.4f")
np.savetxt("../../2.txt",np.std(CMs , axis=0), delimiter="\t", fmt="%.4f")

print oExp
