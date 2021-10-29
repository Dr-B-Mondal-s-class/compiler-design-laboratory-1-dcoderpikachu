%{
//macros of c programs
%}
digit [0-9]

%%
^[0-9]+ {printf("digit(s)");};
^[A-Za-z]+ {printf("letters");};
.;
%%

int main(){
    yylex();
}

int yywrap(void) {
   return 0;
}

