%{
int c=0,v=0,s=0,n=0,d=0;
%}
vowels [AaEeIiOoUu]
consonants [b-dB-DF-Hf-hJ-Nj-nP-Tp-tv-zV-Z]
letters [A-Za-z]
digits [0-9]
ws [ ]

%%
{vowels} {v++;};
{consonants} {c++;};
{digits} {d++;};
{ws} {s++;};
. {n++;};
\n {return 0;}
%%

int main(){
    yylex();
    printf("Number of Vowels: %d\n",v);  
	  printf("Number of Consonants: %d\n",c);
        printf("Number of digits: %d\n",d);   
		 printf("Number of space: %d\n",s);
		     printf("Number of other characters: %d\n",n);
		  
}

int yywrap(void) {
   return 0;
}

