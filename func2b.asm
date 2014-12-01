section	.text
global  func2b

func2b:
	push	ebp
	mov	ebp, esp
	mov	eax, DWORD [ebp+8]	;adres *a do eax
    mov	ebx, DWORD [ebp+8]
dalej:
    mov	cl, BYTE [ebx]
    inc ebx
    test cl, cl
    jnz dalej
    add ebx, -2 ;ciag nie bedzie pusty
loop:
    cmp eax, ebx
    jge koniec
    mov	cl, BYTE [eax]
    mov dl, BYTE [ebx]
    mov	BYTE [ebx], cl
    mov	BYTE [eax], dl
    inc eax
    dec ebx
    jmp loop

koniec:
	mov	eax, 0		;return a
	pop	ebp
	ret
