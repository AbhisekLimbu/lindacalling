# XOS - Custom Operating System

**XOS** is a beginner-level custom operating system written from scratch using Assembly and C++. It is currently in its early development phase and is being built for educational purposes.

## 🔧 Features (Planned)
- Custom bootloader (Completed ✅)
- Basic kernel in C++
- Text-mode output and command input
- Eventually support simple file system and process management

## Development Setup
- Virtualization: QEMU
- Language: NASM (Assembly), C++
- Tools: `make`, `nasm`, `ld`, `gcc`
- Platform: macOS with UTM VM (Ubuntu)

## Getting Started
```bash
make
qemu-system-i386 -fda bootloader.img
