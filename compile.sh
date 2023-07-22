#!/bin/sh
set -e
../cowgol/bin/cowfe-for-80386-with-lx386 $1.cow $1.cob
../cowgol/bin/cowbe-for-80386-with-lx386 $1.cob $1.coo
../cowgol/bin/cowlink-for-grub386-with-lx386 $1.coo -o $1.s
