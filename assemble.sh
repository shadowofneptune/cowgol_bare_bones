#!/bin/sh
set -e
i686-linux-gnu-as $1.s -o $1.o
i686-linux-gnu-ld -T linker.ld -o $1.bin $1.o
