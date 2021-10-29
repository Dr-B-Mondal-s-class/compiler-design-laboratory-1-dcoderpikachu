%{//Read input & count total number of characters in a file
	#include<stdio.h>
	int c=0;
%}


%%
.  {c++;}
%%


int main()
{
	char fName[50];
	printf("Enter the file name: ");
	scanf("%s",fName);
	
	yyin=fopen(fName,"r");
	yylex();
	fclose(yyin);
	printf("Total number of characters:%d ",c);
	return 0;
	
}

yywrap(void)
{
	return 1;
}

