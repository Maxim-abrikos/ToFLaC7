#include <stdio.h>

int Pow(int a, int b)
{
    int result = 1;
    for (int i = 0; i < b; i++)
        result *= a;
    return result;
}

int main()
{
    int a = 3, b = 3;
    int c = Pow(a,b);
    printf("%d", c);
    return 0 ;
}


