CC=./gcc-arm-none-eabi-9-2020-q2-update/bin/arm-none-eabi-gcc
LINKER=./gcc-arm-none-eabi-9-2020-q2-update/bin/arm-none-eabi-ld
OUT_FOLDER=obj
CPU_FLAGS=-mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb

all:
	mkdir -p obj
	$(CC) $(CPU_FLAGS) -Iinc -g -c startup_gcc.c -o $(OUT_FOLDER)/startup_gcc.o 
	$(CC) $(CPU_FLAGS) -Iinc -g -c main.c -o $(OUT_FOLDER)/main.o 
	$(LINKER) $(OUT_FOLDER)/startup_gcc.o $(OUT_FOLDER)/main.o -T lm4f120.ld

clean:
	rm -rf obj a.out
