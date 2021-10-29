%{
//macros

%}
name [0-9a-zA-Z_]{6}
subdomain [@][a-z]+
domain   ".com"
email {name}{subdomain}{domain}

%%
{email} {printf("Valid email");};
.* {printf("Invalid email");};

%%

int main(){
    yylex();
   
}

int yywrap(void) {

   return 0;
}

