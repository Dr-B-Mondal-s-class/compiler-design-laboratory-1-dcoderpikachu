%{
//macros

%}
begin "+91"
number [1-9][0-9]{9}

%%
{begin}{number} {printf("Valid Number");};
.* {printf("Invalid Number");};

%%

int main(){
    yylex();
   
}

int yywrap(void) {

   return 0;
}

