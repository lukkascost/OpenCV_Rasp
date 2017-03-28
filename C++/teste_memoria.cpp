#include "Metodos.hpp"

int  main(){
float* i = (float*)malloc(sizeof(float)*2048);
int x,y= 10 ;
for (x=0;x<2048;x++){
	i[x] = x+y;
}
return 0;
}
