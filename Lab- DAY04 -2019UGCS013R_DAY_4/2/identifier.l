
%{
//macros
%}
keywords (int|float|main|char|class|bool|true|false|return|for|if|while|do|struct|else|case|switch)
identifiers [a-zA-Z_][a-zA-Z0-9_]*
%%
{keywords} {printf("%s is not a valid identifier\n",yytext);};
{identifiers}   {printf("%s is a valid identifier\n",yytext);} 

.+ {printf("%s is not a valid identifier\n",yytext);};
%%

int main(){
    yylex();
}

int yywrap(void) {
   return 0;
}
