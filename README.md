# A Bare-Metal Program 386 program in Cowgol

This is the https://wiki.osdev.org/Bare_Bones tutorial, in the [Cowgol](https://github.com/davidgiven/cowgol) language. It represents the capabilities of the language and its toolchain as of commit [ec33ae1](https://github.com/davidgiven/cowgol/commit/ec33ae1293df3937c6397575a0f7defb5e3b4a4d). It consists of two main files:

 - ``boot.cow``: A small program that prints a Hello World message two different ways. Take a look at this program to see how Cowgol differs from C.
 - ``archgrub386.coh`` A Cowgol header file. It describes a linker that turns Cowgol object files into [GRUB](https://www.gnu.org/software/grub/) multiboot images that can be loaded by GRUB or programs compatible with it, like [QEMU](https://www.qemu.org/).

## Dependencies

 - A Linux environment.
 - Cowgol and all of its dependencies.
 - QEMU, if you want to run the final image in an emulator.

## Instructions

These instructions should be accurate as of commit ec33ae1.

 1. Clone Cowgol and this repository so that they sit side-by-side in the same directory.
 2. Add ``archgrub386.coh`` to the directory ``cowgol/src/cowlink``.
 3. In ``cowgol/src/cowlink``, there should be a file named ``build.py``. Make it recognize ``archgrub386.coh``. I leave the exact method up to you, so that you get familiar with the Cowgol toolchain.
 4. Build Cowgol.
 5. Go back to ``cowgol_bare_bones``. Run ``make`` to compile, assemble, and link ``boot.cow``.
 6. Run ``make run`` to launch the final project in QEMU.

## Dedication

This project is derivative of two sources, [The OSDev Wiki](https://wiki.osdev.org/Expanded_Main_Page) and the Cowgol compiler. It only makes sense to release it under the same terms as the Cowgol compiler itself.
