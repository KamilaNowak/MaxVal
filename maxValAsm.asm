global max
section .text
max:
	mov r12d,0
	mov eax,[rdi]
	xor rax,rax
_loopy:
	cmp r12d,esi
	je _exit
	cmp eax,[rdi+4*r12]
	jl _exchange
	inc r12d
	jmp _loopy
_exchange:
	mov eax,[rdi+4*r12]
	inc r12d
	jmp _loopy
_exit:
	ret