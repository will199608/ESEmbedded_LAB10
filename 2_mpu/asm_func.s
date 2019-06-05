.syntax unified

.global	read_sp
read_sp:
	mov r0 ,SP
	bx lr

.global	read_msp
read_msp:
	mrs r0 ,msp
	bx lr

.global	read_psp
read_psp:
	mrs r0 , psp
	bx lr

.global	read_ctrl
read_ctrl:
	mrs r0 ,control
	bx lr

.global	start_user
start_user:
	mov lr ,r0
	msr psp ,r1
	mov r0 ,3
	msr control ,r0
	ISB
	bx lr
.global	sw_priv
sw_priv:
	mov r0 , 0
	msr control ,r0
	ISB
	bx lr
