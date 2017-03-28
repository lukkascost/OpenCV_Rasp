// Compilar com
// g++ svm_k_inter.cpp -o svm_k_inter -lopencv_core -lopencv_imgproc -lopencv_highgui -lopencv_ml

#include <stdlib.h>
#include <stdio.h>
#include "Metodos.hpp"



char addressTeste[500]="DataBase/testing.dat";//Banco de dados - Carregar
char addressTreino[500]="DataBase/training.dat";//Banco de dados normalizado - Salvar
char addressR [500] ="Resultados_C.txt" ;//Banco de dados normalizado - Salvar

int main(){
    int selecione;
    float objetosTeste,atributosTeste;
    float objetosTreino, atributosTreino;
    int decision;
    
    GetObjetosAtributos(objetosTeste, atributosTeste, addressTeste);
    GetObjetosAtributos(objetosTreino, atributosTreino, addressTreino);
    
    Mat bdTeste(objetosTeste,atributosTeste+1,CV_32FC1);
    PassarBancoDeDadosParaMat(bdTeste,objetosTeste,atributosTeste, addressTeste);
    
    Mat bdTreino(objetosTreino,atributosTreino+1,CV_32FC1);
    PassarBancoDeDadosParaMat(bdTreino,objetosTreino,atributosTreino, addressTreino);
    
    
    
     //Atribuir valores as matrizes "Atrib" e "Label"
    Mat Treino(objetosTreino,atributosTreino,CV_32FC1);
    Mat TreinoLabel(objetosTreino,1,CV_32FC1);
    AtribuirValoresMatrizes(bdTreino,Treino,TreinoLabel, objetosTreino, atributosTreino);
    
        
     //Atribuir valores as matrizes "Atrib" e "Label"
    Mat Teste(objetosTeste,atributosTeste,CV_32FC1);
    Mat TesteLabel(objetosTeste,1,CV_32FC1);
    AtribuirValoresMatrizes(bdTeste,Teste,TesteLabel, objetosTeste, atributosTeste);
    
     //------------------------------------------------------------
    //-----------------SVM PARAMETROS-----------------------------
    //------------------------------------------------------------
    

    //int kernell = 1; //Roda a SVM com kernell Linear
    //int kernell = 2; //Roda a SVM com kernell RBF
    //int kernell = 3; //Roda a SVM com kernell Poly
    //int kernell = 4; //Roda a SVM com kernell Sigmoid
    int kernell = 2;
    
    
    CvSVMParams param = CvSVMParams();
    
    param.svm_type = CvSVM::C_SVC;
    
    switch (kernell) {
        case 1:
            param.kernel_type = CvSVM::LINEAR;
            break;
        case 2:
            param.kernel_type = CvSVM::RBF;
            break;
        case 3:
            param.kernel_type = CvSVM::POLY;
            break;
        case 4:
            param.kernel_type = CvSVM::SIGMOID;
            break;
        default:
            param.kernel_type = CvSVM::LINEAR;
            break;
    }
    
    param.degree = 1; // for poly
    param.gamma = 20; // for poly/rbf/sigmoid
    param.coef0 =10; // for poly/sigmoid
    
    param.C = 7; // for CV_SVM_C_SVC, CV_SVM_EPS_SVR and CV_SVM_NU_SVR
    param.nu = 0.0; // for CV_SVM_NU_SVC, CV_SVM_ONE_CLASS, and CV_SVM_NU_SVR
    param.p = 0.0; // for CV_SVM_EPS_SVR
    
    param.class_weights = NULL; // for CV_SVM_C_SVC
    param.term_crit.type = CV_TERMCRIT_ITER +CV_TERMCRIT_EPS;
    param.term_crit.max_iter = 1000;
    param.term_crit.epsilon = 1e-6;

    //------------------------------------------------------------
    //-----------------SVM TREINAMENTO----------------------------
    //------------------------------------------------------------
    int resultados [7][2]={{0,0},{0,0},{0,0},{0,0},{0,0},{0,0},{0,0}};
    CvSVM SVM;
    //int iteractions = SVM.train_auto(Treino, TreinoLabel, cv::Mat(), cv::Mat(), param, 10);
    int iteractions = SVM.train(Treino, TreinoLabel, cv::Mat(), cv::Mat(), param);
    SVM.save("vetores.txt");
    Mat test_sample;
    printf("\n--------------------------------------------------------------------");
    printf("\n   KERNEL RBF ");
    printf("\n   PARAMETROS ESTATICOS");
    
    float acerto=0;
    float erro=0;
    
    for (int tsample = 0; tsample <objetosTeste; tsample++) {
        
        test_sample=Teste.row(tsample);
        
        int res = (int)(SVM.predict(test_sample));
        int test = (int)(TesteLabel.at<float>(tsample));
        
        
        if (test!=res){
            erro++;
            resultados[test][1]++;
        }
        else{
            acerto++;
            resultados[res][0]++;
        }
    }
    printf("\nTaxa de Acerto : %0.10f %%\n",(((float)acerto*100)/((float)acerto+erro)));
    float res = 0.00;
    int i;
    for (i=0;i<7;i++){
        res = (((float)resultados[i][0]*100)/((float)resultados[i][0]+resultados[i][1]));
        printf("Classe %d Acc = %0.10f acertos %d erros %d\n",i,res, resultados[i][0],resultados[i][1]);
    }
    return 0;
}




