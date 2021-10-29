%{
//macros of c programs
%}
vowels [AaEeIiOoUu]+
consonants [b-dB-DF-Hf-hJ-Nj-nP-Tp-tv-zV-Z]+
letters [A-Za-z]+

%%
{vowels} {printf("This contains vowels");};
{consonants} {printf("This contains consonants");};
{letters} {printf("This has both vowels and consonants");};
.+ {printf("This has other characters");};
%%

int main(){
    yylex();
}

int yywrap(void) {
   return 0;
}

