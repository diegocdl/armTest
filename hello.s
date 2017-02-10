	.arch armv8-a
	.file	"hello.c"
	.section	.rodata
	.align	3
.LC0:
	.string	"!!!Hello World!!!"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	stp	x29, x30, [sp, -16]!
	add	x29, sp, 0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	puts
	mov	w0, 0
	ldp	x29, x30, [sp], 16
	ret
	.size	main, .-main
	.ident	"GCC: (Linaro GCC 6.2-2016.11) 6.2.1 20161016"
