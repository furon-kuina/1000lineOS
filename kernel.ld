/* Set boot as an entrypoint */
ENTRY(boot)

SECTIONS {
    . = 0x80200000;

    .text :{
        KEEP(*(.text.boot));
        /* Place sections with .text */
        *(.text .text.*);
    }

    .rodata : ALIGN(4) {
        *(.rodata .rodata.*);
    }

    .data : ALIGN(4) {
        *(.data .data.*);
    }

    .bss : ALIGN(4) {
        /* Set __bss to current address */
        __bss = .;
        *(.bss .bss.* .sbss .sbss.*);
        __bss_end = .;
    }

    /* Align address to a multiple of 4 bytes */
    . = ALIGN(4);
    /* Add 128KB to the current address */
    . += 128 * 1024;
    __stack_top = .;

    . = ALIGN(4096);
    __free_ram = .;
    . += 64 * 1024 * 1024; /* 64MiBを動的に割り当てられるメモリ領域とする */
    __free_ram_end = .;
}