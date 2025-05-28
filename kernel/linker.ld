OUTPUT_FORMAT("binary")
ENTERY 	(kernal_main)

SECTION{
     . = 1M;
     .text : {*(.text*)}
     .rodata : { *(.rodata*)}
     .data : {*(.dat*))
     .bss : {*(.bss*)}


}
