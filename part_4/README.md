# VERI Part 4

Although the system is clocked at 50MHz, but the SPI interface and PWM interface takes sample at 10KHz, meaning signals are sent to / read from FPGA once every 1ms.

The processor in Ex17, contains a FIFO memory, it need to R/W data at same frequency as the SPI and PWM interface. And only read data from SPI2ADC after the data had been fulled loaded to the FPGA board. The above are the reasons for requirement of data_vaild signal.
