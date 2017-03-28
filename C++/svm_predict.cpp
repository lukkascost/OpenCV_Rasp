// Compilar com
// g++ svm_predict.cpp -o svm_predict -lopencv_core -lopencv_imgproc -lopencv_highgui -lopencv_ml

#include "Metodos.hpp"


int main(){
  float objetos,atributos;
  char address[500]="/DataBase/testing.dat";
  CvSVM SVM;
  SVM.load("vetores.txt");

  //Passar Banco de Dados Para Mat
  Mat BancoDeDados(1,9,CV_32FC1);
  PassarBancoDeDadosParaMat(BancoDeDados,1,8, address);
  
  //  int resultado = SVM.predict(BancoDeDados.row(0));

  //  printf("Classe: ",resultado);
	    
}




