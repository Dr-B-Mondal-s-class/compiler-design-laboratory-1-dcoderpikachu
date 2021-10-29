%{
    // Program to find number of
    // lexemes
    int n = 0;
%}

keywords (int|float|main|char|class|bool|true|false|return|for|if|while|do|struct|else|case|switch)
identifiers [a-zA-Z_][a-zA-Z0-9_]*
operators "<="|"=="|"="|"++"|"-"|"*"|"+"|"--"
seperators [(){}|, ;.]
floats [0-9]*"."[0-9]+
integers [0-9]+

%%
{keywords} {n++;};
{identifiers} {n++;};
{operators} {n++;};
{seperators} {n++;};
{floats} {n++;};
{integers} {n++;};
. ;
%%

int main() {
	char fname[30];
	printf("Enter the name of file:\t");
    scanf("%s",fname);
    yyin = fopen(fname, "r");
    yylex();
    printf("Total no. of lexemes = %d\n", n); 
    return 0;
}
int yywrap(void)
{
    return 1;
}
