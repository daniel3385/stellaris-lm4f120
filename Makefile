all:
	./gcc-arm-none-eabi-9-2020-q2-update/bin/arm-none-eabi-gcc -Iinc -g -c startup_gcc.c main.c
	./gcc-arm-none-eabi-9-2020-q2-update/bin/arm-none-eabi-ld startup_gcc.o main.o -T lm4f120.ld
