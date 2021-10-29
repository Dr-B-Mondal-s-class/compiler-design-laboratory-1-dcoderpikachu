%{
//macros
%}
int [0-9]*
float {int}+"."{int}+

%%

{int}  {printf("%s is an int value\n",yytext);} 
{float}  {printf("%s is a float value \n",yytext);};
.+ {printf("%s is invalid\n",yytext);};
%%

int main(){
    yylex();
}

int yywrap(void) {
   return 0;
}
