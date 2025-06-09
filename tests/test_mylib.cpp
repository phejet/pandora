#include <assert.h>
#include <stdio.h>
#include "mylib/mylib.h"

int main() {
    // Basic test for add function
    printf("***********************************\n");
    assert(mylib::add(2, 3) == 5);
    assert(mylib::add(-1, 1) == 0);
    assert(mylib::add(0, 0) == 0);
    assert(3==3);
    return 0;
}
