#include <stdio.h>

#define PI 3.14159

#define DEBUG 

#ifdef DEBUG
    #define LOG(x) printf("Debug: %s\n", x)
#else
    #define LOG(x)
#endif

int sestej(int a, int b) {
    return a + b;
}

int main() {
    int x = 5, y = 10;
    int vsota = sestej(x, y);

    LOG("ZaÄenjam program...");
    printf("Vsota %d in %d je %d\n", x, y, vsota);
    printf("Vrednost PI je %.5f\n", PI);

    return 0;
}