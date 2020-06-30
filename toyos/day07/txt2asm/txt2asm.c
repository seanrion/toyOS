#include <stdio.h>
#define N 100
void main(int args,char *argv[])
{
    if(args == 1){
        printf("format: txt2obj.exe [inputfilename] [outputfilename] [label]\n");
        exit(0); 
    }
    char *label = argv[3];
	FILE *fp=fopen(argv[1],"r");
	FILE *fo=fopen(argv[2],"w");
	fprintf(fo,"GLOBAL	%s\n",label);
	fprintf(fo,"[SECTION .data]\n");
	fprintf(fo,"%s:\n",label);
    if( fp == NULL )
    {
        printf("Fail to open file!\n");
        exit(0); 
    }
    char str[N + 1];
    int num = 1;
    while( fgets(str, N, fp) != NULL ) {
        if (str[0]=='.' || str[0]=='*'){
            int sum = str2num(str);
            if (num > 1 && num < 16){
                num++;
                fprintf(fo,"%d,",sum);
            }
            else if(num >= 16){
                num = 1;
                fprintf(fo,"%d\n",sum);
            }
            else{
                num++;
                fprintf(fo,"\tDB\t%d,",sum);
            }
        }

    }
}

int str2num(char *str)
{
        int i;
        for(i=0;i<8;i++){
            if(str[i]=='.')
                str[i] = '0';
            else
                str[i] = '1';
        }
        int sum = 0;
        for(i=0;i<8;i++){
            sum *= 2;
            sum+=(str[i]-'0');
        }
        return sum;
}
