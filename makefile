AS = nasm 
CC = i686-elf-g++
LD = i686-elf-ld
CFLAGS = -ffreestanding -02 -m32 -nostdlib - fno-rtti
LDFLAGS = - T kernel/linker.ld -nostdlib -m elf_i386

all: bootloader:bin kernel.bin  os-image

bootloader.bin: bootloader/boot.asm
    $(AS) -f bin bootloader/boot.asm -o bootloader.bin 

build/kernel.o: kernel/kernel.cpp
     $(CC) $(CFLAGS) -c kernel/kernel.cpp -o build/kernel.o

kernel.bin: build/kernel.o 
   $(LD) build/kernel.o -o  kernel.bin  $(LDFLAGS)

os-image: bootloader.bin kernel.bin
   mkdir -p build
   cat bootloader.bin kernel.bin > build/os-image.bin
clean:
    rm -rf build/*.o build/*.bin
.phony: all clean os-image
