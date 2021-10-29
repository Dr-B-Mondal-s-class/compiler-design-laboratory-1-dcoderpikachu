%{
    // Macros for C program
    #include <stdio.h>
%}

%%
[\n]+ {fprintf(yyout,"");}
[ \t]+ {fprintf(yyout," ");}
. {fprintf(yyout,"%s",yytext);}
%%
int main() {
 	char inpfile[30],outfile[30];
 	printf("Enter the input file name:\n");
 	scanf("%s",inpfile);
 	printf("Enter the output filename: \t\n");
 	scanf("%s",outfile);
 	
    yyin = fopen(inpfile, "r");
    yyout = fopen(outfile, "w");
    yylex();
    fclose(yyin);
    fclose(yyout);
    return 0;
}
int yywrap(void)
{
    return 1;
}
