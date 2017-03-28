
#include "Metodos.hpp"
#include <iostream>

vector<double> glcm_extraction(Mat image, int grayscale){
    vector<double> glcm_features;
    
    Mat imageQuantized, coOccurence, coOccurenceNormalized;
    image.copyTo(imageQuantized);
    
    /* Quantiza a imagem de entrada */
    //quantizerMatrix(image, imageQuantized, grayscale);
    
    /* Calcula a Matriz de Co-Ocorrencia */
    getCoOccurrenceMatrix(imageQuantized, coOccurence, grayscale);
    
    /* Normaliza a Matriz de Co-Ocorrencia */
    normalizeCoOccurrenceMatrix(coOccurence, coOccurenceNormalized, imageQuantized, grayscale);
    
    /* Calcula os atributos da GLCM */
    getFeatures(glcm_features, coOccurenceNormalized, grayscale);
    
    imageQuantized.release();
    coOccurence.release();
    coOccurenceNormalized.release();
    
    return glcm_features;
}
int main(){
	Mat imageMethods = imread("c1_1.jpg",CV_LOAD_IMAGE_GRAYSCALE);
	vector<double> data;
	data = glcm_extraction(imageMethods, 256);
	printf("\nData: %f",data[0]);
}