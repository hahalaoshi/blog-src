#include <stdio.h>

int add(int a, int b);
int sub(int a, int b);

int global_val = 1;
int uinit_val;

int main(void)
{
    /* This is a comment */
    int a, b;
    static int local_val = 2;
    static int uninit_local_val;

    a = add(2, 3);
    b = sub(5, 4);

    printf("a = %d\n", a);
    printf("b = %d\n", b);

    return 0;
}
