%{
int c=0;
%}
%%
\n {return 0;}
. {c++;};
%%
int main () {
yylex ();
printf("Number of characters: %d\n",c);
}
int yywrap (void)
{
return 0;
}
