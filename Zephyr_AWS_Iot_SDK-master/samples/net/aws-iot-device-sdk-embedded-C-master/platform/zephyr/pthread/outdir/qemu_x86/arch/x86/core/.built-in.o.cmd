cmd_arch/x86/core/built-in.o :=  /opt/zephyr-sdk/sysroots/x86_64-pokysdk-linux/usr/bin/i586-zephyr-elf/i586-zephyr-elf-ld -nostartfiles -nodefaultlibs -nostdlib -static   -r -o arch/x86/core/built-in.o arch/x86/core/cpuhalt.o arch/x86/core/msr.o arch/x86/core/irq_manage.o arch/x86/core/sys_fatal_error_handler.o arch/x86/core/crt0.o arch/x86/core/cache_s.o arch/x86/core/cache.o arch/x86/core/excstub.o arch/x86/core/intstub.o arch/x86/core/swap.o arch/x86/core/thread.o arch/x86/core/fatal.o 
