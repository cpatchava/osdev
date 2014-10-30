osdev
=====

I want to make a fully operational operating system

export PREFIX="$HOME/opt/cross"
export TARGET=i686-elf
export PATH="$PREFIX/bin:$PATH"

export PATH="$HOME/opt/cross/bin:$PATH" has to be done to the shell



You need to first run the configure script in order to link up the compiler
, and if you made any changes to the kernel then you 
will have to run the run.sh script and your operating systemw ill boot.

