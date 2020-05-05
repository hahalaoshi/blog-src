int add(int a, int b);
int sub(int a, int b);
int mul(int a, int b);
int div(int a, int b);

int global_val = 1;
int uinit_val;

int main(void)
{

    add(1, 2);
    sub(3, 4);
    mul(5, 6);
    div(7, 8);

    return 0;
}
