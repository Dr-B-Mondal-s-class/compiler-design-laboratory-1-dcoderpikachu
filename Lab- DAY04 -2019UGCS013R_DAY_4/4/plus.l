%{//macros of c
%}

PLUS [\+]
MINUS [\-]
GE (>=)
LE (<=)

%%
{PLUS} {printf("PLUS\n",yytext);};
{MINUS} {printf("MINUS\n",yytext);};
{GE} {printf("GE\n",yytext);};
{LE} {printf("LE\n",yytext);};
.* {printf("INVALID");};
%%

int main(){
   yylex();
}
 int yywrap(void){
  return 0;
}

