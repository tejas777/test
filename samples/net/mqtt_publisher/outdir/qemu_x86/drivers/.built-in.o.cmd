cmd_drivers/built-in.o :=  /opt/zephyr-sdk//sysroots/x86_64-pokysdk-linux/usr/bin/i586-zephyr-elf/i586-zephyr-elf-ld -nostartfiles -nodefaultlibs -nostdlib -static   -r -o drivers/built-in.o drivers/console/built-in.o drivers/random/built-in.o drivers/serial/built-in.o drivers/timer/built-in.o drivers/interrupt_controller/built-in.o drivers/ethernet/built-in.o drivers/slip/built-in.o 
