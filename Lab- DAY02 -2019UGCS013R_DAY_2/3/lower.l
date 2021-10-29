%{
//macros of c programs
%}
upper [A-Z]
lower [a-z]
letters [A-Za-z]

%%
{lower}+ {printf("This is a lowercase letters");};
{upper}+ {printf("This is a uppercase letters");};
{letters}+ {printf("it has both cases");};
.* {printf("This is undefined case letters");};
%%

int main(){
    yylex();
}

int yywrap(void) {
   return 0;
}

