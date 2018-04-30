/*
 * C program to generate tribonacci Series. tribonacci Series
 */
#include <stdio.h>

void main(){

    int  trib1 = 0, trib2 = 1, trib3 = 1, trib4, limit, count = 0, testing = 0;

    printf("Enter the Tribonacci number you would like \n");
    scanf("%d", &limit);
    if(0 == limit){
        printf("T(%d) = %d\n", limit, trib1);
    }else if(1 == limit || 2 == limit){
        printf("T(%d) = %d\n", limit, trib2);
    }else{
        if(1 == testing){
            printf("tribonacci Series is ...\n");
            printf("%d\n", trib1);
            printf("%d\n", trib2);
        }
        count = 2;

        while (count < limit){
            trib4 = trib1 + trib2 + trib3;
            count++;
            if(1 == testing){
                printf("%d\n", trib3);
            }
            trib1 = trib2;
            trib2 = trib3;
            trib3 = trib4;
        }
        printf("T(%d) = %d\n", limit, trib3);
    }
}