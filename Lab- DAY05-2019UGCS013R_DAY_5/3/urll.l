%{ //checking whether url is valid or not
%}

protocol "http"|"https"|"ftp"
domain  "com"|"co\.in"|"ac"|"org"|"net"|"in"|"edu"
domain_name [a-zA-Z0-9_]+
url ({protocol}":\/\/www\."{domain_name}\.{domain})

%%
{url} {printf("Valid URL");};
.+ {printf("Invalid URL");};
%%

int main(){
    printf("Enter the URL:");
    yylex();
}
int yywrap(void){
    return 0;
}

