ENTRY(start)

SECTIONS {
  . = 0x1000000;

  .text :{
    KEEP(*(.text.start));
    *(.text .text.*);
  }

  .rodate : ALIGN(4) {
    *(.rodata .rodata.*);
  }

  .data : ALIGN(4) {
    *(.data .data.*)
  }

  .bss : ALIGN(4) {
    *(.bss .bss.* .sbss .sbss.*);

        . = ALIGN(4);
        . += 64 * 1024; /* 64KB */
        __stack_top = .;

       ASSERT(. < 0x1800000, "too large executable");
  }
}