cmd_subsys/built-in.o :=  /opt/zephyr-sdk//sysroots/x86_64-pokysdk-linux/usr/bin/i586-zephyr-elf/i586-zephyr-elf-ld -nostartfiles -nodefaultlibs -nostdlib -static   -r -o subsys/built-in.o subsys/net/built-in.o subsys/logging/built-in.o subsys/debug/built-in.o 
