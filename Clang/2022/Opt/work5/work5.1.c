/**
 * @file 1.c
 * @author Neolux Lee (hello.neolux.ml)
 * @version 0.1
 * @date 2022-10-15
 * 
 * @copyright Copyright (c) 2022
 * 
 */

#include "stdio.h"
#include "string.h"

int main(int argc, char const *argv[])
{
    char str1[100], str2[100];
    scanf("%s", str1);
    scanf("%s", str2);
    int result = strcmp(str1, str2);
    if (result > 0)
    {
        printf("%s is greater than %s", str1, str2);
    }
    else if (result == 0)
    {
        printf("%s is equal to %s", str1, str2);
    }
    else
    {
        printf("%s is less than %s\n", str1, str2);
    }
    
    return 0;
}
