
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

---

Want to add any extra sections like "Things I've learned so far" or "Next steps"?
