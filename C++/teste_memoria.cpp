#include <stdio.h>
#include <string.h>
#include "sys/types.h"
#include "sys/sysinfo.h"
#include "Metodos.cpp"
struct sysinfo memInfo;

//Add other values in next statement to avoid int overflow on right hand side...


int  main(){
	sysinfo (&memInfo);
	printf("Antes total:%ld  ",memInfo.totalram);
	printf("Livre: %ld ",memInfo.freeram);
	
	
return 0;
}
