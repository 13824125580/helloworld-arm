all:
	/opt/arm-2007q3/bin/arm-none-linux-gnueabi-gcc -g -static pthread.c -lpthread -o pthread
	/opt/arm-2007q3/bin/arm-none-linux-gnueabi-gcc -g -static signal.c -o signal
	/opt/arm-2007q3/bin/arm-none-linux-gnueabi-as asm.S -o asm.o
	/opt/arm-2007q3/bin/arm-none-linux-gnueabi-ld asm.o -o asm
	/opt/arm-2007q3/bin/arm-none-linux-gnueabi-objdump -D asm >asm.dis
