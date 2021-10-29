%{
//macros of c programs
%}
characters [A-Za-z]+
others [0-9]

%%
{characters} {printf("This contains alphabets");};
.+ {printf("This has other characters");};
%%

int main(){
    yylex();
}

int yywrap(void) {
   return 0;
}

