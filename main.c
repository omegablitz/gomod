#include <stdio.h>
#include "gomod.h"

int main() {
    GoString str = go_main();
    printf("%s\n", str.p);
}
