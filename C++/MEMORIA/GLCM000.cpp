#include "Metodos.hpp"
int main(){
        Mat imageMethods = imread("../Imagens/000_passo.JPG",CV_LOAD_IMAGE_GRAYSCALE);
        int sat[15925248];
        vector<double> data;
        int i,j;
        data = glcm_extraction(imageMethods, 256);
        for (i=0;i<imageMethods.size().height;i++){
                for (j=0;j<imageMethods.size().width;j++){
                        sat[i*imageMethods.size().width + j] = 12;
                }
        }
        for(i=0;i<10;i++){
          printf("\nData %d: %f",i,data[i]);
        }
}






