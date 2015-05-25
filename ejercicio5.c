#include <stdlib.h>
#include <stdio.h>

void fn(int x)
{
    x = 21;
    int x;
    x = 42;
    printf("%d\n",x);
}

int main()
{
    fn(3);
}