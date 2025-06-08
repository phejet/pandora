#include <cassert>
#include "mylib/mylib.h"

int main() {
    // Basic test for add function
    assert(mylib::add(2, 3) == 5);
    assert(mylib::add(-1, 1) == 0);
    assert(mylib::add(0, 0) == 0);
    return 0;
}
