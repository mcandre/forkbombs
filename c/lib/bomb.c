// Copyright 2020 YelloSoft

#include <unistd.h>

int main(void) {
    for (;;) {
        (void) fork();
    }
}
