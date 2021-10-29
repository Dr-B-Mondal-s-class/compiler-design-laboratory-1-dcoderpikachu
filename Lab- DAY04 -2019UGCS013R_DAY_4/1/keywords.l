%{
//macros
%}
keywords (int|float|main|char|class|bool|true|false|return|for|if|while|do|struct|else|case|switch)* 

%%
{keywords} {printf("%s is the Keyword \n",yytext);}; 

.+ {printf("%s is not a keyword\n",yytext);};
%%

int yywrap(void){}

int main()
{
	
	yylex();

	return 0;
}

