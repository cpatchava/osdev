clear
i686-elf-as boot.s -o boot.o

i686-elf-gcc -c -Wall  scrn.c  -o scrn.o -std=gnu99 -ffreestanding -O2 -Wextra 
i686-elf-gcc -c -Wall  gdt.c  -o gdt.o -std=gnu99 -ffreestanding -O2 -Wextra 
i686-elf-gcc -c -Wall  kernel.c  -o kernel.o -std=gnu99 -ffreestanding -O2 -Wextra 

i686-elf-gcc -T linker.ld -o myos.bin -ffreestanding -O2 -nostdlib boot.o scrn.o gdt.o kernel.o -lgcc

cp myos.bin isodir/boot/myos.bin
cp grub.cfg isodir/boot/grub/grub.cfg
grub-mkrescue -o myos.iso isodir

qemu-system-i386 -cdrom myos.iso
