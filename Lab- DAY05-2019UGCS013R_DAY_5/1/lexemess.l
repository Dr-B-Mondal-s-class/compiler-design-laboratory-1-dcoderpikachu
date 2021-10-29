%{
//macros
int c=0;
%}
keywords (int|float|main|char|class|bool|true|false|return|for|if|while|do|struct|else|case|switch)
identifier [a-zA-Z_][a-zA-Z0-9_]*
inte [0-9]*
floats {inte}+"."{inte}+
operators ("+"|"\-"|"/"|"%"|"\*"|">"|"<"|"."|"="|"!="|"&&"|"&"|"||"|";")
eol \n

%%

{keywords}  {c++;} 
{identifier}  {c++;}
{inte}  {c++;}
{floats}  {c++;}
{operators}  {c++;}
{eol}  {printf("count=%d\n",c);return 0;}

%%

int main(){
    yylex();
   
}

int yywrap(void) {

   return 0;
}

