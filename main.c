#include <stdio.h>

#define PI 3.14159  // Makro za vrednost Ï

#define DEBUG 

#ifdef DEBUG
    #define LOG(x) printf("Debug: %s\n", x)
#else
    #define LOG(x)
#endif


int main() {
    LOG("Začenjam program...");
    printf("Vrednost PI je %.5f\n", PI);

    return 0;
}