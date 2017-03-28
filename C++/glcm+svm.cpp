//g++ glcm+svm.cpp -o glcm+svm -lopencv_core -lopencv_imgproc -lopencv_highgui -lopencv_ml
#include "Metodos.hpp"

int main(){

  // Parte do GLCM
  Mat imageMethods = imread("c1_1.JPG",CV_LOAD_IMAGE_GRAYSCALE);
  int i;
  vector<double> data;
  Mat sample(1,9,CV_32FC1);
  data = glcm_extraction(imageMethods, 256);
  for(i=0;i<9;i++){
    sample.at<float>(0,i) = data[i];
    printf("%f \n",sample.at<float>(0,i));    
  }
  // Parte do SVM
  CvSVM SVM;
  SVM.load("vetores.txt");
  float resultado = SVM.predict(sample);
  printf("Resultado classe %f\n",resultado);

  
  return 0;
}
