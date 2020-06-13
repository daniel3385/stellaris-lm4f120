# stellaris-lm4f120
Baremetal Stellaris LM4F120

Get GCC
* wget https://developer.arm.com/-/media/Files/downloads/gnu-rm/9-2020q2/gcc-arm-none-eabi-9-2020-q2-update-x86_64-linux.tar.bz2
* tar xjfv gcc-arm-none-eabi-9-2020-q2-update-x86_64-linux.tar.bz2
* ./gcc-arm-none-eabi-9-2020-q2-update/bin/arm-none-eabi-gcc -v
* ./toolchain-arm/gcc-arm-none-eabi-9-2020-q2-update/bin/arm-none-eabi-gcc -Iincludes --specs=nosys.specs main.c

Get LM4Tools
* git clone https://github.com/utzig/lm4tools.git
* cd lm4tools/lm4flash/
* make

OPENOCD
* sudo openocd -f /usr/local/share/openocd/scripts/board/ek-lm4f120xl.cfg
