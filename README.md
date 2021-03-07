# microzig - zig for microcontrollers

## TODO

### Features
Right now this is mostly focused on STM32 right now.
- [ ] Interrupts
- [ ] PLL
- [ ] Timers
  - [ ] SysTick
   - [ ] Timers based on SysTick
  - [ ] TIMx
- [ ] GPIO 
  - [x] Basic abstraction
  - [ ] Interrupts
  - [x] LED
  - [ ] Buttons
  - [ ] ADC
  - [ ] PWM
  - [ ] QEI (Quadratrure Encoder Interface)
- [ ] U(S)ART
  - [ ] MMIO
  - [ ] DMA
- [ ] SPI
  - [ ] MMIO
  - [ ] DMA
  - [ ] Devices
    - [ ] SDIO
    - [ ] Flash
- [ ] I2C
  - [ ] MMIO
  - [ ] DMA
  - [ ] Devices
    - [ ] SSD1306
- [ ] event loop
  - [ ] interrupts support 
  - [ ] waiting for MMIO registers
  - [ ] async for all I/O
- [ ] USB
  - [ ] DMA
  - [ ] Descriptors
    - [ ] Device
    - [ ] Configuration
    - [ ] Interface
    - [ ] Endpoint
    - [ ] String
  - [ ] CDC
    - [ ] ACM
  - [ ] HID
  - [ ] MIDI
- [ ] ETH
  - [ ] DMA
  
### SoCs
Right now I work on supporting those:
 - [ ] Cortex-M4
   - [ ] STM32F401CCU6 (BlackPill aka ???)
   - [ ] STM32F411CEU6 (BlackPill aka WEACT_F411CEU6)

The plan is to buy more of them and at the end support most of the STM32 familly. 
