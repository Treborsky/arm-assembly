program.elf: program.o
	@echo "Linking program"
	arm-linux-gnueabi-gcc-7 program.o -o program.elf -nostdlib

program.o: program.asm
	@echo "Compiling program to machine code"
	arm-linux-gnueabi-as program.asm -o program.o

clean:
	@echo "Cleaning up program.o and program.elf"
	rm program.o program.elf

