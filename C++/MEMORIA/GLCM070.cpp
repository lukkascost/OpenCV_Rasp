
#include "Metodos.hpp"



int main(){
	Mat imageMethods = imread("../Imagens/070_passo.JPG",CV_LOAD_IMAGE_GRAYSCALE);
	vector<double> data;
	int i;
	data = glcm_extraction(imageMethods, 256);
	for(i=0;i<10;i++){
	  printf("\nData %d: %f",i,data[i]);
	}
}
