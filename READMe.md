#xos - custom operating system
**xos** is a custom operating system written from scratch using assembly and C++.It is currently in early developement phase and is being built for educational purpose .
#features
- custom bootloader (completed)
-basic kernel in c++
-Text mode output and command input
-Eventually support simple file system and process management

##Developement setup
-virtualization : QEMU
-langugae : NASM (assembly), C++
-Tools : 'make', 'nasm', 'ld', 'gcc'
-platform : macos with UTM VM (ubuntu)

## getting started 
bash 
make 
qemu-system-i386-fda bootloader.img 
