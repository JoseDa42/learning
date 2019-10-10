
#include <stdio.h>

int summary(int a)
{
    int num;

    num = a;
    while (a > 0){

        printf("%d\n", a);
        a--;
        num = num + a;
    }
    return(num);
}

int main(){

    printf("%d", summary(4));

}