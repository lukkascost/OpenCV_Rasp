from MachineLearn.Classes.experiment import Experiment
from MachineLearn.Classes.data_set import DataSet
from MachineLearn.Classes.data import Data
import numpy as np
import cv2

oExp = Experiment()
basemask = np.array([1, 2, 5, 9, 15, 16, 17, 21, 22, 23, 25])
acuracia = 0
nVetores = 10000;

# ###############################################################################################################################
# basemask = basemask - 1
# best = 0
#
# for i in range(1):
#     oDataSet = DataSet()
#     base = np.loadtxt("GLCM_RESIZE/DECIMACAO_BASE_24/FEATURES_M73_CM8b.txt", delimiter=",")
#     for k in base:
#         oDataSet.addSampleOfAtt(k[basemask])
#     oDataSet.normalizeDataSet()
#     for j in range(10000):
#         oData = Data(7, 13)
#         oData.randomTrainingTestPerClass()
#         svm = cv2.SVM()
#         oData.params = dict(kernel_type=cv2.SVM_RBF, svm_type=cv2.SVM_C_SVC, gamma=2.0, nu=0.0, p=0.0, coef0=0)
#         svm.train(np.float32(oDataSet.atributes[oData.Training_indexes]),
#                   np.float32(oDataSet.labels[oData.Training_indexes]), params=oData.params)
#         results = svm.predict_all(np.float32(oDataSet.atributes[oData.Testing_indexes]))
#         oData.setResultsFromClassfier(results, oDataSet.labels[oData.Testing_indexes])
#         if oData.getMetrics()[0, -1] > acuracia:
#             nVetores = svm.get_support_vector_count()
#             acuracia = oData.getMetrics()[0, -1]
#             print nVetores, acuracia
#             best = j
#         elif (oData.getMetrics()[0, -1] == acuracia):
#             if nVetores > svm.get_support_vector_count():
#                 nVetores = svm.get_support_vector_count()
#                 best = j
#
#         oDataSet.append(oData)
#     oExp.addDataSet(oDataSet,
#                     description="10000 execucoes para escolher melhores vetores de suporte, o melhor esta no index {:05d}".format(
#                         best))
# oExp.save("OBJETOS/EXPERIMENTO_02_MELHOR_TREINAMENTO_10000_COURO_96_LIMIAR.txt")

################################################################################################################################
oExp = oExp.load("OBJETOS/EXPERIMENTO_02_MELHOR_TREINAMENTO_10000_COURO_96_LIMIAR.txt")
print oExp
oData = oExp.experimentResults[0].dataSet[7697]
oDataSet = oExp.experimentResults[0]

print "Acuracias por classe: \n", oData.getMetrics().T
print "Matriz Confusao: \n", oData.confusion_matrix

svm = cv2.SVM()
svm.train(np.float32(oDataSet.atributes[oData.Training_indexes]), np.float32(oDataSet.labels[oData.Training_indexes]),
          params=oData.params)
print "Numero de vetores suporte: ", svm.get_support_vector_count()
svm.save("SVM_LUCAS10_73_THRES_96.txt")
