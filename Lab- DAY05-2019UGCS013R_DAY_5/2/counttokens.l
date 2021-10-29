%{
//macros
int c=0,kw=0,i=0,in=0,fl=0,op=0;
%}
keywords (int|float|main|char|class|bool|true|false|return|for|if|while|do|struct|else|case|switch)
identifier [a-zA-Z_][a-zA-Z0-9_]*
inte [0-9]*
floats {inte}+"."{inte}+
operators ("+"|"\-"|"/"|"%"|"\*"|">"|"<"|"."|"="|"!="|"&&"|"&"|"||"|";")
eol \n
%%

{keywords}  {c++;kw++;} 
{identifier}  {c++;i++;}
{inte}  {c++;in++;}
{floats}  {c++;fl++;}
{operators}  {c++;op++;}
{eol}  {printf("count of lexemes=%d\n",c); printf("count of keywords=%d\n",kw);
printf("count of identifiers=%d\n",i);
printf("count of integers=%d\n",in);
printf("count of fractions=%d\n",fl);
printf("count of operators=%d\n",op);
return 0;}

%%

int main(){
    yylex();
   // printf("count=\n%d",c);
}

int yywrap(void) {
 //   printf("count=\n%d",c);
   return 0;
}
