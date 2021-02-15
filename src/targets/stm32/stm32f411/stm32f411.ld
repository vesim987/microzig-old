/* Specify the memory areas */
MEMORY
{
    FLASH (rx)      : ORIGIN = 0x08000000, LENGTH = 512K
    FLASH_ISR (rx)  : ORIGIN = 0x08000000, LENGTH = 16K
    FLASH_TEXT (rx) : ORIGIN = 0x08020000, LENGTH = 384K
    RAM (xrw)       : ORIGIN = 0x20000000, LENGTH = 64K
}

INCLUDE src/targets/stm32/common.ld
