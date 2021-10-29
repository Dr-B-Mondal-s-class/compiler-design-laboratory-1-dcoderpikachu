%{
    // Program to print character,tabs and whitespaces count in an input file
    int l=0,w=0, c=0,t=0;
%}
    
%%
\n { l++; }
\t {t++;}
([ ]) w++;
. c++;
%% 
int yywrap(void)
{
    return 1;
}
  
  
int main()
{   char fName[30];   
    printf("Enter the name of file:\t");
    scanf("%s",fName);
    yyin = fopen(fName, "r");
    yylex();
    fclose(yyin);
    printf("Line count: %d\n",l);
    printf("Whitespaces count: %d\n",w);
    printf("Tabs count: %d\n",t);
    printf("Characters count: %d\n",c);
    return 0;
}
