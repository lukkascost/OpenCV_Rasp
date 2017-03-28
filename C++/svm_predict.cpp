// Compilar com
// g++ svm_predict.cpp -o svm_predict -lopencv_core -lopencv_imgproc -lopencv_highgui -lopencv_ml

#include <stdio.h>
#include <string.h>
#include "sys/types.h"
#include "sys/sysinfo.h"
#include "Metodos.hpp"
struct sysinfo memInfo;

int main(){
	sysinfo (&memInfo);
	unsigned long memoria;
	memoria = (memInfo.totalram-memInfo.freeram)/1024;
	printf("Antes total:%u  ",memoria);
    CvSVM SVM;
    SVM.load("vetores.txt");
    sysinfo (&memInfo);
	printf("\ndepois total:%u  ",(memInfo.totalram - memInfo.freeram)/1024);
	memoria = ((memInfo.totalram - memInfo.freeram)/1024) - memoria ;
	printf("\nsvm %u",memoria);
}




