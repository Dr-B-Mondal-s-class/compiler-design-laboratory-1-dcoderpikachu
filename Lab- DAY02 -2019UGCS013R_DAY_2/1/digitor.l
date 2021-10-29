%{
//macros of c programs
%}
digit [0-9]

%%
{digit} {printf("This is a digit");};
[A-Za-z0-9\/?%&@*]* {printf("This is not digit");};
%%

int main(){
    yylex();
}

int yywrap(void) {
   return 0;
}

