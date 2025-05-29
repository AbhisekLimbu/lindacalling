
# XOS - My Bare-Metal Operating System

**XOS** is a simple operating system I’m building from scratch as a personal learning journey. It's written in Assembly and C++ and runs in a virtual machine. This is very much a work in progress—expect it to be raw and experimental.

## 🛠️ Current Progress

* [x] Custom bootloader that boots up and prints a message.
* [ ] Kernel written in C++ (in development).
* [ ] Text output and user input (soon).
* [ ] Very basic file system support (eventually).

## 💻 How I'm Building It

* **Assembler:** NASM
* **Compiler/Linker:** GCC and LD
* **Virtual Machine:** QEMU (running in UTM on macOS)
* **Makefile:** Yes, building is automated

## Running It

To build and run:

```bash
make
qemu-system-i386 -fda bootloader.img
```

## Folder Structure (so far)

```
/bootloader      -> boot.asm (your first 512 bytes)
/kernel          -> kernel.cpp (just getting started)
/build           -> output files go here
Makefile         -> builds everything
```

##Notes

This project is mostly just me learning how computers boot up and talk to hardware. It's not meant to be fully featured (yet), but I’m hoping to learn a lot from it.



### ✅ Cross-Compiler Setup on macOS

Since macOS (especially on Apple Silicon) doesn't natively support compiling 32-bit i386 binaries, I built a custom cross-compiler (`i386-elf-gcc`) from source. This lets me compile my OS kernel directly on macOS without relying on a Linux VM for builds.

**Steps:**

* Downloaded and extracted `binutils` and `gcc` source code.
* Configured `binutils` for the `i386-elf` target and installed it to `~/xos-toolchain`.
* Configured GCC with `--target=i386-elf`, enabled C/C++, and disabled headers.
* Compiled using `make all-gcc` and installed it.

```bash
$ i386-elf-gcc --version
i386-elf-gcc (GCC) 13.1.0
```

This cross-compiler now builds the kernel binaries for XOS, which I run inside QEMU.


