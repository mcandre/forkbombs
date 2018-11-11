#include <unistd.h>

int main(void) {
    for (;;) {
        fork();
    }
}
