# Hello world program
.global _start
.section .text

// STDIN - 0 
// STDOUT - 1 <- we'll use this one
// STDERR - 2

// write hello world do stdout (fd 1)

_start:
	mov r0, #1		// load fd to r0 (file descriptor 1 -> stdout)
	ldr r1, =message	// load message to r1 (write buffer)
	mov r2, #13		// load message size to r2 (write buffer size)
	swi 0			// trigger interrupt
	
	mov r7, #0x1
	mov r0, #65
	swi 0	

.section .data
	message:
	.ascii "Hello, World\n"
