ENTRY(resetHandler)

PROVIDE(__stack_top = ALIGN(ORIGIN(RAM) + LENGTH(RAM) - 8 ,8));

SECTIONS
{
  .isr_vector :
  {
    . = ALIGN(4);
    LONG(__stack_top);
    KEEP(*(.isr_vector))
    . = ALIGN(4);
  } > FLASH_ISR

  .text :
  {
    . = ALIGN(4);
    *(.text*)
    *(.rodata*)
  } > FLASH_TEXT
  
  .ARM :
  {
      __exidx_start = .;
      *(.ARM.exidx*)
      __exidx_end = .;
  } > FLASH_TEXT

  _data_rom_start = LOADADDR(.data);
  .data : {
    . = ALIGN(4);
    _data_ram_start = .;
    *(.data*)
    _data_ram_stop = .;
    . = ALIGN(4);
  } >RAM AT> FLASH
}
