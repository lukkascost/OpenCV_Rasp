	.arch armv6
	.eabi_attribute 27, 3
	.eabi_attribute 28, 1
	.fpu vfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"GLCM005.cpp"
	.section	.text._ZnwjPv,"axG",%progbits,_ZnwjPv,comdat
	.align	2
	.weak	_ZnwjPv
	.type	_ZnwjPv, %function
_ZnwjPv:
	.fnstart
.LFB292:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-12]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZnwjPv, .-_ZnwjPv
	.text
	.align	2
	.type	_ZN9__gnu_cxxL18__exchange_and_addEPVii, %function
_ZN9__gnu_cxxL18__exchange_and_addEPVii:
	.fnstart
.LFB670:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-8]
	mcr	p15, 0, r0, c7, c10, 5
.L5:
	ldrex	r1, [r3]
	add	r0, r1, r2
	strex	ip, r0, [r3]
	cmp	ip, #0
	bne	.L5
	mcr	p15, 0, r0, c7, c10, 5
	mov	r3, r1
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN9__gnu_cxxL18__exchange_and_addEPVii, .-_ZN9__gnu_cxxL18__exchange_and_addEPVii
	.section	.text._ZN2cv3Mat9initEmptyEv,"axG",%progbits,_ZN2cv3Mat9initEmptyEv,comdat
	.align	2
	.weak	_ZN2cv3Mat9initEmptyEv
	.type	_ZN2cv3Mat9initEmptyEv, %function
_ZN2cv3Mat9initEmptyEv:
	.fnstart
.LFB2934:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r2, .L7
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-8]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-8]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-8]
	mov	r2, #0
	str	r2, [r3, #32]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #32]
	ldr	r3, [fp, #-8]
	str	r2, [r3, #28]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #28]
	ldr	r3, [fp, #-8]
	str	r2, [r3, #24]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #24]
	ldr	r3, [fp, #-8]
	str	r2, [r3, #16]
	ldr	r3, [fp, #-8]
	mov	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [fp, #-8]
	mov	r2, #0
	str	r2, [r3, #36]
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L8:
	.align	2
.L7:
	.word	1124007936
	.cantunwind
	.fnend
	.size	_ZN2cv3Mat9initEmptyEv, .-_ZN2cv3Mat9initEmptyEv
	.section	.text._ZN2cv3MatC2Ev,"axG",%progbits,_ZN2cv3MatC5Ev,comdat
	.align	2
	.weak	_ZN2cv3MatC2Ev
	.type	_ZN2cv3MatC2Ev, %function
_ZN2cv3MatC2Ev:
	.fnstart
.LFB2936:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	add	r2, r3, #40
	ldr	r3, [fp, #-8]
	add	r3, r3, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2cv3Mat5MSizeC1EPi
	ldr	r3, [fp, #-8]
	add	r3, r3, #44
	mov	r0, r3
	bl	_ZN2cv3Mat5MStepC1Ev
	ldr	r0, [fp, #-8]
	bl	_ZN2cv3Mat9initEmptyEv
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZN2cv3MatC2Ev, .-_ZN2cv3MatC2Ev
	.weak	_ZN2cv3MatC1Ev
_ZN2cv3MatC1Ev = _ZN2cv3MatC2Ev
	.section	.text._ZN2cv3MatC2ERKS0_,"axG",%progbits,_ZN2cv3MatC5ERKS0_,comdat
	.align	2
	.weak	_ZN2cv3MatC2ERKS0_
	.type	_ZN2cv3MatC2ERKS0_, %function
_ZN2cv3MatC2ERKS0_:
	.fnstart
.LFB2957:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	.save {r4, fp, lr}
	.setfp fp, sp, #8
	add	fp, sp, #8
	.pad #12
	sub	sp, sp, #12
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r3, [fp, #-20]
	ldr	r2, [r3]
	ldr	r3, [fp, #-16]
	str	r2, [r3]
	ldr	r3, [fp, #-20]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-16]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-16]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-16]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-20]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-16]
	str	r2, [r3, #16]
	ldr	r3, [fp, #-20]
	ldr	r2, [r3, #20]
	ldr	r3, [fp, #-16]
	str	r2, [r3, #20]
	ldr	r3, [fp, #-20]
	ldr	r2, [r3, #24]
	ldr	r3, [fp, #-16]
	str	r2, [r3, #24]
	ldr	r3, [fp, #-20]
	ldr	r2, [r3, #28]
	ldr	r3, [fp, #-16]
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	ldr	r2, [r3, #32]
	ldr	r3, [fp, #-16]
	str	r2, [r3, #32]
	ldr	r3, [fp, #-20]
	ldr	r2, [r3, #36]
	ldr	r3, [fp, #-16]
	str	r2, [r3, #36]
	ldr	r3, [fp, #-16]
	add	r2, r3, #40
	ldr	r3, [fp, #-16]
	add	r3, r3, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2cv3Mat5MSizeC1EPi
	ldr	r3, [fp, #-16]
	add	r3, r3, #44
	mov	r0, r3
	bl	_ZN2cv3Mat5MStepC1Ev
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L13
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #20]
	mov	r0, r3
	mov	r1, #1
	bl	_ZN9__gnu_cxxL18__exchange_and_addEPVii
.L13:
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #4]
	cmp	r3, #2
	bgt	.L14
	ldr	r3, [fp, #-16]
	add	r3, r3, #44
	mov	r0, r3
	mov	r1, #0
	bl	_ZN2cv3Mat5MStepixEi
	mov	r4, r0
	ldr	r3, [fp, #-20]
	add	r3, r3, #44
	mov	r0, r3
	mov	r1, #0
	bl	_ZNK2cv3Mat5MStepixEi
	mov	r3, r0
	ldr	r3, [r3]
	str	r3, [r4]
	ldr	r3, [fp, #-16]
	add	r3, r3, #44
	mov	r0, r3
	mov	r1, #1
	bl	_ZN2cv3Mat5MStepixEi
	mov	r4, r0
	ldr	r3, [fp, #-20]
	add	r3, r3, #44
	mov	r0, r3
	mov	r1, #1
	bl	_ZNK2cv3Mat5MStepixEi
	mov	r3, r0
	ldr	r3, [r3]
	str	r3, [r4]
	b	.L15
.L14:
	ldr	r3, [fp, #-16]
	mov	r2, #0
	str	r2, [r3, #4]
	ldr	r0, [fp, #-16]
	ldr	r1, [fp, #-20]
	bl	_ZN2cv3Mat8copySizeERKS0_
.L15:
	ldr	r3, [fp, #-16]
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	ldmfd	sp!, {r4, fp, pc}
	.fnend
	.size	_ZN2cv3MatC2ERKS0_, .-_ZN2cv3MatC2ERKS0_
	.weak	_ZN2cv3MatC1ERKS0_
_ZN2cv3MatC1ERKS0_ = _ZN2cv3MatC2ERKS0_
	.section	.text._ZN2cv3MatD2Ev,"axG",%progbits,_ZN2cv3MatD5Ev,comdat
	.align	2
	.weak	_ZN2cv3MatD2Ev
	.type	_ZN2cv3MatD2Ev, %function
_ZN2cv3MatD2Ev:
	.fnstart
.LFB2972:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r0, [fp, #-8]
	bl	_ZN2cv3Mat7releaseEv
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #44]
	ldr	r3, [fp, #-8]
	add	r3, r3, #48
	cmp	r2, r3
	beq	.L19
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #44]
	mov	r0, r3
	bl	_ZN2cv8fastFreeEPv
.L19:
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZN2cv3MatD2Ev, .-_ZN2cv3MatD2Ev
	.weak	_ZN2cv3MatD1Ev
_ZN2cv3MatD1Ev = _ZN2cv3MatD2Ev
	.section	.text._ZN2cv3Mat7releaseEv,"axG",%progbits,_ZN2cv3Mat7releaseEv,comdat
	.align	2
	.weak	_ZN2cv3Mat7releaseEv
	.type	_ZN2cv3Mat7releaseEv, %function
_ZN2cv3Mat7releaseEv:
	.fnstart
.LFB2987:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L22
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #20]
	mov	r0, r3
	mvn	r1, #0
	bl	_ZN9__gnu_cxxL18__exchange_and_addEPVii
	mov	r3, r0
	cmp	r3, #1
	bne	.L22
	mov	r3, #1
	b	.L23
.L22:
	mov	r3, #0
.L23:
	cmp	r3, #0
	beq	.L24
	ldr	r0, [fp, #-16]
	bl	_ZN2cv3Mat10deallocateEv
.L24:
	ldr	r3, [fp, #-16]
	mov	r2, #0
	str	r2, [r3, #32]
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #32]
	ldr	r3, [fp, #-16]
	str	r2, [r3, #28]
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #28]
	ldr	r3, [fp, #-16]
	str	r2, [r3, #24]
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #24]
	ldr	r3, [fp, #-16]
	str	r2, [r3, #16]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L25
.L26:
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #40]
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #2
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L25:
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-8]
	cmp	r2, r3
	bgt	.L26
	ldr	r3, [fp, #-16]
	mov	r2, #0
	str	r2, [r3, #20]
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZN2cv3Mat7releaseEv, .-_ZN2cv3Mat7releaseEv
	.section	.text._ZNK2cv3Mat12isContinuousEv,"axG",%progbits,_ZNK2cv3Mat12isContinuousEv,comdat
	.align	2
	.weak	_ZNK2cv3Mat12isContinuousEv
	.type	_ZNK2cv3Mat12isContinuousEv, %function
_ZNK2cv3Mat12isContinuousEv:
	.fnstart
.LFB2992:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	and	r3, r3, #16384
	cmp	r3, #0
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK2cv3Mat12isContinuousEv, .-_ZNK2cv3Mat12isContinuousEv
	.section	.text._ZNK2cv3Mat4typeEv,"axG",%progbits,_ZNK2cv3Mat4typeEv,comdat
	.align	2
	.weak	_ZNK2cv3Mat4typeEv
	.type	_ZNK2cv3Mat4typeEv, %function
_ZNK2cv3Mat4typeEv:
	.fnstart
.LFB2996:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	mov	r3, r3, asl #20
	mov	r3, r3, lsr #20
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK2cv3Mat4typeEv, .-_ZNK2cv3Mat4typeEv
	.section	.text._ZN2cv3Mat5MSizeC2EPi,"axG",%progbits,_ZN2cv3Mat5MSizeC5EPi,comdat
	.align	2
	.weak	_ZN2cv3Mat5MSizeC2EPi
	.type	_ZN2cv3Mat5MSizeC2EPi, %function
_ZN2cv3Mat5MSizeC2EPi:
	.fnstart
.LFB3038:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-12]
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN2cv3Mat5MSizeC2EPi, .-_ZN2cv3Mat5MSizeC2EPi
	.weak	_ZN2cv3Mat5MSizeC1EPi
_ZN2cv3Mat5MSizeC1EPi = _ZN2cv3Mat5MSizeC2EPi
	.section	.text._ZNK2cv3Mat5MSizeclEv,"axG",%progbits,_ZNK2cv3Mat5MSizeclEv,comdat
	.align	2
	.weak	_ZNK2cv3Mat5MSizeclEv
	.type	_ZNK2cv3Mat5MSizeclEv, %function
_ZNK2cv3Mat5MSizeclEv:
	.fnstart
.LFB3040:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	add	r3, r3, #4
	ldr	r2, [r3]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r0, [fp, #-8]
	mov	r1, r2
	mov	r2, r3
	bl	_ZN2cv5Size_IiEC1Eii
	ldr	r0, [fp, #-8]
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZNK2cv3Mat5MSizeclEv, .-_ZNK2cv3Mat5MSizeclEv
	.section	.text._ZN2cv3Mat5MStepC2Ev,"axG",%progbits,_ZN2cv3Mat5MStepC5Ev,comdat
	.align	2
	.weak	_ZN2cv3Mat5MStepC2Ev
	.type	_ZN2cv3Mat5MStepC2Ev, %function
_ZN2cv3Mat5MStepC2Ev:
	.fnstart
.LFB3047:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	add	r2, r3, #4
	ldr	r3, [fp, #-8]
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	add	r3, r3, #4
	mov	r1, #0
	str	r1, [r3]
	ldr	r3, [r3]
	str	r3, [r2]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN2cv3Mat5MStepC2Ev, .-_ZN2cv3Mat5MStepC2Ev
	.weak	_ZN2cv3Mat5MStepC1Ev
_ZN2cv3Mat5MStepC1Ev = _ZN2cv3Mat5MStepC2Ev
	.section	.text._ZNK2cv3Mat5MStepixEi,"axG",%progbits,_ZNK2cv3Mat5MStepixEi,comdat
	.align	2
	.weak	_ZNK2cv3Mat5MStepixEi
	.type	_ZNK2cv3Mat5MStepixEi, %function
_ZNK2cv3Mat5MStepixEi:
	.fnstart
.LFB3052:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	add	r3, r2, r3
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK2cv3Mat5MStepixEi, .-_ZNK2cv3Mat5MStepixEi
	.section	.text._ZN2cv3Mat5MStepixEi,"axG",%progbits,_ZN2cv3Mat5MStepixEi,comdat
	.align	2
	.weak	_ZN2cv3Mat5MStepixEi
	.type	_ZN2cv3Mat5MStepixEi, %function
_ZN2cv3Mat5MStepixEi:
	.fnstart
.LFB3053:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	add	r3, r2, r3
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN2cv3Mat5MStepixEi, .-_ZN2cv3Mat5MStepixEi
	.section	.text._ZN2cv3MataSERKNS_7MatExprE,"axG",%progbits,_ZN2cv3MataSERKNS_7MatExprE,comdat
	.align	2
	.weak	_ZN2cv3MataSERKNS_7MatExprE
	.type	_ZN2cv3MataSERKNS_7MatExprE, %function
_ZN2cv3MataSERKNS_7MatExprE:
	.fnstart
.LFB3181:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	ldr	r3, [r3]
	add	r3, r3, #12
	ldr	ip, [r3]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [fp, #-12]
	ldr	r2, [fp, #-8]
	mvn	r3, #0
	blx	ip
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZN2cv3MataSERKNS_7MatExprE, .-_ZN2cv3MataSERKNS_7MatExprE
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,4
	.section	.rodata
	.align	2
.LC0:
	.ascii	"[empty_any]\000"
	.section	.text._ZN7cvflann7anyimpllsERSoRKNS0_9empty_anyE,"axG",%progbits,_ZN7cvflann7anyimpllsERSoRKNS0_9empty_anyE,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpllsERSoRKNS0_9empty_anyE
	.type	_ZN7cvflann7anyimpllsERSoRKNS0_9empty_anyE, %function
_ZN7cvflann7anyimpllsERSoRKNS0_9empty_anyE:
	.fnstart
.LFB4684:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	ldr	r1, .L47
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L48:
	.align	2
.L47:
	.word	.LC0
	.fnend
	.size	_ZN7cvflann7anyimpllsERSoRKNS0_9empty_anyE, .-_ZN7cvflann7anyimpllsERSoRKNS0_9empty_anyE
	.section	.text._ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE5printERSoPKPv,"axG",%progbits,_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE5printERSoPKPv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE5printERSoPKPv
	.type	_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE5printERSoPKPv, %function
_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE5printERSoPKPv:
	.fnstart
.LFB4699:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r0, [fp, #-12]
	mov	r1, r3
	bl	_ZNSolsEi
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE5printERSoPKPv, .-_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE5printERSoPKPv
	.section	.text._ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE5printERSoPKPv,"axG",%progbits,_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE5printERSoPKPv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE5printERSoPKPv
	.type	_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE5printERSoPKPv, %function
_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE5printERSoPKPv:
	.fnstart
.LFB4700:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r0, [fp, #-12]
	mov	r1, r3
	bl	_ZNSolsEi
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE5printERSoPKPv, .-_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE5printERSoPKPv
	.section	.rodata
	.align	2
.LC1:
	.ascii	"r\000"
	.align	2
.LC2:
	.ascii	"%f,\000"
	.text
	.align	2
	.global	_Z19GetObjetosAtributosRfS_Pc
	.type	_Z19GetObjetosAtributosRfS_Pc, %function
_Z19GetObjetosAtributosRfS_Pc:
	.fnstart
.LFB5513:
	@ args = 0, pretend = 0, frame = 5032
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #4992
	sub	sp, sp, #4992
	.pad #40
	sub	sp, sp, #40
	sub	r3, fp, #4096
	sub	r3, r3, #4
	str	r0, [r3, #-924]
	sub	r3, fp, #4096
	sub	r3, r3, #4
	str	r1, [r3, #-928]
	sub	r3, fp, #4096
	sub	r3, r3, #4
	str	r2, [r3, #-932]
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-924]
	mov	r2, #0
	str	r2, [r3]	@ float
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-928]
	mov	r2, #0
	str	r2, [r3]	@ float
	ldr	r3, .L56+4
	str	r3, [fp, #-8]	@ float
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r0, [r3, #-932]
	ldr	r1, .L56+8
	bl	fopen
	mov	r3, r0
	str	r3, [fp, #-12]
	b	.L52
.L53:
	sub	r3, fp, #4992
	sub	r3, r3, #4
	sub	r3, r3, #20
	mov	r0, r3
	ldr	r1, .L56+12
	ldr	r2, [fp, #-12]
	bl	fgets
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-924]
	flds	s15, [r3]
	flds	s14, .L56
	fadds	s15, s15, s14
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-924]
	fsts	s15, [r3]
.L52:
	ldr	r0, [fp, #-12]
	bl	feof
	mov	r3, r0
	cmp	r3, #0
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L53
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-924]
	flds	s15, [r3]
	flds	s14, .L56
	fsubs	s15, s15, s14
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-924]
	fsts	s15, [r3]
	ldr	r0, [fp, #-12]
	bl	fclose
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r0, [r3, #-932]
	ldr	r1, .L56+8
	bl	fopen
	mov	r3, r0
	str	r3, [fp, #-12]
	b	.L54
.L55:
	sub	r3, fp, #16
	ldr	r0, [fp, #-12]
	ldr	r1, .L56+16
	mov	r2, r3
	bl	fscanf
	flds	s15, [fp, #-8]
	flds	s14, .L56
	fadds	s15, s15, s14
	fsts	s15, [fp, #-8]
.L54:
	ldr	r0, [fp, #-12]
	bl	feof
	mov	r3, r0
	cmp	r3, #0
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L55
	ldr	r0, [fp, #-12]
	bl	fclose
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-924]
	flds	s15, [r3]
	flds	s14, [fp, #-8]
	fdivs	s15, s14, s15
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-928]
	fsts	s15, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-928]
	flds	s15, [r3]
	flds	s14, .L56
	fsubs	s15, s15, s14
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-928]
	fsts	s15, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-928]
	flds	s15, [r3]
	ftosizs	s15, s15
	fsitos	s15, s15
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-928]
	fsts	s15, [r3]
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-924]
	flds	s15, [r3]
	ftosizs	s15, s15
	fsitos	s15, s15
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-924]
	fsts	s15, [r3]
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L57:
	.align	2
.L56:
	.word	1065353216
	.word	-1082130432
	.word	.LC1
	.word	5000
	.word	.LC2
	.fnend
	.size	_Z19GetObjetosAtributosRfS_Pc, .-_Z19GetObjetosAtributosRfS_Pc
	.section	.rodata
	.align	2
.LC3:
	.ascii	"\012ok\000"
	.align	2
.LC4:
	.ascii	"\012ok %f\000"
	.text
	.align	2
	.global	_Z25PassarBancoDeDadosParaMatN2cv3MatEffPc
	.type	_Z25PassarBancoDeDadosParaMatN2cv3MatEffPc, %function
_Z25PassarBancoDeDadosParaMatN2cv3MatEffPc:
	.fnstart
.LFB5514:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #32
	sub	sp, sp, #32
	str	r0, [fp, #-24]
	fsts	s0, [fp, #-28]
	fsts	s1, [fp, #-32]
	str	r1, [fp, #-36]
	ldr	r0, [fp, #-36]
	ldr	r1, .L65+4
	bl	fopen
	mov	r3, r0
	str	r3, [fp, #-16]
	ldr	r0, .L65+8
	bl	printf
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L59
.L64:
	flds	s15, [fp, #-32]
	fcvtds	d7, s15
	ldr	r0, .L65+12
	fmrrd	r2, r3, d7
	bl	printf
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L60
.L63:
	ldr	r0, .L65+8
	bl	printf
	ldr	r3, [fp, #-12]
	fmsr	s15, r3	@ int
	fsitos	s14, s15
	flds	s15, [fp, #-32]
	fcmps	s14, s15
	fmstat
	beq	.L61
	sub	r3, fp, #20
	ldr	r0, [fp, #-16]
	ldr	r1, .L65+16
	mov	r2, r3
	bl	fscanf
	ldr	r0, [fp, #-24]
	ldr	r1, [fp, #-8]
	ldr	r2, [fp, #-12]
	bl	_ZN2cv3Mat2atIfEERT_ii
	mov	r2, r0
	ldr	r3, [fp, #-20]	@ float
	str	r3, [r2]	@ float
.L61:
	ldr	r3, [fp, #-12]
	fmsr	s15, r3	@ int
	fsitos	s14, s15
	flds	s15, [fp, #-32]
	fcmps	s14, s15
	fmstat
	bne	.L62
	sub	r3, fp, #20
	ldr	r0, [fp, #-16]
	ldr	r1, .L65+16
	mov	r2, r3
	bl	fscanf
	ldr	r0, [fp, #-24]
	ldr	r1, [fp, #-8]
	ldr	r2, [fp, #-12]
	bl	_ZN2cv3Mat2atIfEERT_ii
	mov	r2, r0
	ldr	r3, [fp, #-20]	@ float
	str	r3, [r2]	@ float
.L62:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L60:
	ldr	r3, [fp, #-12]
	fmsr	s15, r3	@ int
	fsitos	s14, s15
	flds	s15, [fp, #-32]
	flds	s13, .L65
	fadds	s15, s15, s13
	fcmpes	s14, s15
	fmstat
	bmi	.L63
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L59:
	ldr	r3, [fp, #-8]
	fmsr	s15, r3	@ int
	fsitos	s14, s15
	flds	s15, [fp, #-28]
	fcmpes	s14, s15
	fmstat
	bmi	.L64
	ldr	r0, [fp, #-16]
	bl	fclose
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L66:
	.align	2
.L65:
	.word	1065353216
	.word	.LC1
	.word	.LC3
	.word	.LC4
	.word	.LC2
	.fnend
	.size	_Z25PassarBancoDeDadosParaMatN2cv3MatEffPc, .-_Z25PassarBancoDeDadosParaMatN2cv3MatEffPc
	.align	2
	.global	_Z23AtribuirValoresMatrizesN2cv3MatES0_S0_ff
	.type	_Z23AtribuirValoresMatrizesN2cv3MatES0_S0_ff, %function
_Z23AtribuirValoresMatrizesN2cv3MatES0_S0_ff:
	.fnstart
.LFB5515:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #36
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	fsts	s0, [fp, #-36]
	fsts	s1, [fp, #-40]
	flds	s15, [fp, #-40]
	flds	s14, .L74
	fadds	s15, s15, s14
	fsts	s15, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L68
.L73:
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L69
.L72:
	ldr	r3, [fp, #-20]
	fmsr	s15, r3	@ int
	fsitos	s14, s15
	flds	s15, [fp, #-40]
	flds	s13, .L74
	fsubs	s15, s15, s13
	fcmps	s14, s15
	fmstat
	bne	.L70
	ldr	r0, [fp, #-32]
	ldr	r1, [fp, #-16]
	mov	r2, #0
	bl	_ZN2cv3Mat2atIfEERT_ii
	mov	r4, r0
	ldr	r0, [fp, #-24]
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-20]
	bl	_ZN2cv3Mat2atIfEERT_ii
	mov	r3, r0
	ldr	r3, [r3]	@ float
	str	r3, [r4]	@ float
	b	.L71
.L70:
	ldr	r0, [fp, #-28]
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-20]
	bl	_ZN2cv3Mat2atIfEERT_ii
	mov	r4, r0
	ldr	r0, [fp, #-24]
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-20]
	bl	_ZN2cv3Mat2atIfEERT_ii
	mov	r3, r0
	ldr	r3, [r3]	@ float
	str	r3, [r4]	@ float
.L71:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L69:
	ldr	r3, [fp, #-20]
	fmsr	s15, r3	@ int
	fsitos	s14, s15
	flds	s15, [fp, #-40]
	fcmpes	s14, s15
	fmstat
	bmi	.L72
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L68:
	ldr	r3, [fp, #-16]
	fmsr	s15, r3	@ int
	fsitos	s14, s15
	flds	s15, [fp, #-36]
	fcmpes	s14, s15
	fmstat
	bmi	.L73
	sub	sp, fp, #8
	@ sp needed
	ldmfd	sp!, {r4, fp, pc}
.L75:
	.align	2
.L74:
	.word	1065353216
	.cantunwind
	.fnend
	.size	_Z23AtribuirValoresMatrizesN2cv3MatES0_S0_ff, .-_Z23AtribuirValoresMatrizesN2cv3MatES0_S0_ff
	.align	2
	.global	_Z24AcharQuantidadeDeClassesiN2cv3MatEf
	.type	_Z24AcharQuantidadeDeClassesiN2cv3MatEf, %function
_Z24AcharQuantidadeDeClassesiN2cv3MatEf:
	.fnstart
.LFB5516:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	fsts	s0, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L77
.L79:
	ldr	r0, [fp, #-20]
	ldr	r1, [fp, #-8]
	bl	_ZN2cv3Mat2atIfEERT_i
	mov	r3, r0
	flds	s14, [r3]
	ldr	r3, [fp, #-16]
	fmsr	s15, r3	@ int
	fsitos	s15, s15
	fcmpes	s14, s15
	fmstat
	movgt	r3, #1
	movle	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L78
	ldr	r0, [fp, #-20]
	ldr	r1, [fp, #-8]
	bl	_ZN2cv3Mat2atIfEERT_i
	mov	r3, r0
	flds	s15, [r3]
	ftosizs	s15, s15
	fmrs	r3, s15	@ int
	str	r3, [fp, #-16]
.L78:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L77:
	ldr	r3, [fp, #-8]
	fmsr	s15, r3	@ int
	fsitos	s14, s15
	flds	s15, [fp, #-24]
	fcmpes	s14, s15
	fmstat
	bmi	.L79
	ldr	r3, [fp, #-16]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_Z24AcharQuantidadeDeClassesiN2cv3MatEf, .-_Z24AcharQuantidadeDeClassesiN2cv3MatEf
	.section	.text._ZN2cv7MatExprD2Ev,"axG",%progbits,_ZN2cv7MatExprD5Ev,comdat
	.align	2
	.weak	_ZN2cv7MatExprD2Ev
	.type	_ZN2cv7MatExprD2Ev, %function
_ZN2cv7MatExprD2Ev:
	.fnstart
.LFB5519:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	add	r3, r3, #120
	mov	r0, r3
.LEHB0:
	bl	_ZN2cv3MatD1Ev
.LEHE0:
	ldr	r3, [fp, #-8]
	add	r3, r3, #64
	mov	r0, r3
.LEHB1:
	bl	_ZN2cv3MatD1Ev
.LEHE1:
	ldr	r3, [fp, #-8]
	add	r3, r3, #8
	mov	r0, r3
.LEHB2:
	bl	_ZN2cv3MatD1Ev
.LEHE2:
	ldr	r3, [fp, #-8]
	b	.L88
.L86:
	ldr	r3, [fp, #-8]
	add	r3, r3, #64
	mov	r0, r3
	bl	_ZN2cv3MatD1Ev
	b	.L85
.L87:
.L85:
	ldr	r3, [fp, #-8]
	add	r3, r3, #8
	mov	r0, r3
	bl	_ZN2cv3MatD1Ev
.LEHB3:
	bl	__cxa_end_cleanup
.LEHE3:
.L88:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.global	__gxx_personality_v0
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA5519:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5519-.LLSDACSB5519
.LLSDACSB5519:
	.uleb128 .LEHB0-.LFB5519
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L86-.LFB5519
	.uleb128 0
	.uleb128 .LEHB1-.LFB5519
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L87-.LFB5519
	.uleb128 0
	.uleb128 .LEHB2-.LFB5519
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB5519
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE5519:
	.section	.text._ZN2cv7MatExprD2Ev,"axG",%progbits,_ZN2cv7MatExprD5Ev,comdat
	.fnend
	.size	_ZN2cv7MatExprD2Ev, .-_ZN2cv7MatExprD2Ev
	.weak	_ZN2cv7MatExprD1Ev
_ZN2cv7MatExprD1Ev = _ZN2cv7MatExprD2Ev
	.global	__aeabi_idiv
	.text
	.align	2
	.global	_Z15quantizerMatrixN2cv3MatERS0_i
	.type	_Z15quantizerMatrixN2cv3MatERS0_i, %function
_Z15quantizerMatrixN2cv3MatERS0_i:
	.fnstart
.LFB5517:
	@ args = 0, pretend = 0, frame = 256
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	.save {r4, fp, lr}
	.setfp fp, sp, #8
	add	fp, sp, #8
	.pad #260
	sub	sp, sp, #260
	str	r0, [fp, #-256]
	str	r1, [fp, #-260]
	str	r2, [fp, #-264]
	ldr	r3, [fp, #-256]
	add	r3, r3, #40
	sub	r2, fp, #28
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK2cv3Mat5MSizeclEv
	ldr	r0, [fp, #-256]
	bl	_ZNK2cv3Mat4typeEv
	mov	ip, r0
	sub	r2, fp, #252
	sub	r3, fp, #28
	mov	r0, r2
	mov	r1, r3
	mov	r2, ip
.LEHB4:
	bl	_ZN2cv3Mat5zerosENS_5Size_IiEEi
.LEHE4:
	sub	r3, fp, #252
	ldr	r0, [fp, #-260]
	mov	r1, r3
.LEHB5:
	bl	_ZN2cv3MataSERKNS_7MatExprE
.LEHE5:
	sub	r3, fp, #252
	mov	r0, r3
.LEHB6:
	bl	_ZN2cv7MatExprD1Ev
.LEHE6:
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L90
.L93:
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L91
.L92:
	ldr	r0, [fp, #-260]
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-20]
	bl	_ZN2cv3Mat2atIhEERT_ii
	mov	r4, r0
	ldr	r0, [fp, #-256]
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-20]
	bl	_ZN2cv3Mat2atIhEERT_ii
	mov	r3, r0
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	ldr	r1, [fp, #-264]
	bl	__aeabi_idiv
	mov	r3, r0
	uxtb	r3, r3
	strb	r3, [r4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L91:
	ldr	r3, [fp, #-256]
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bgt	.L92
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L90:
	ldr	r3, [fp, #-256]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bgt	.L93
	b	.L96
.L95:
	sub	r3, fp, #252
	mov	r0, r3
	bl	_ZN2cv7MatExprD1Ev
.LEHB7:
	bl	__cxa_end_cleanup
.LEHE7:
.L96:
	sub	sp, fp, #8
	@ sp needed
	ldmfd	sp!, {r4, fp, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA5517:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5517-.LLSDACSB5517
.LLSDACSB5517:
	.uleb128 .LEHB4-.LFB5517
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB5517
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L95-.LFB5517
	.uleb128 0
	.uleb128 .LEHB6-.LFB5517
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB5517
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE5517:
	.text
	.fnend
	.size	_Z15quantizerMatrixN2cv3MatERS0_i, .-_Z15quantizerMatrixN2cv3MatERS0_i
	.align	2
	.global	_Z21getCoOccurrenceMatrixN2cv3MatERS0_i
	.type	_Z21getCoOccurrenceMatrixN2cv3MatERS0_i, %function
_Z21getCoOccurrenceMatrixN2cv3MatERS0_i:
	.fnstart
.LFB5521:
	@ args = 0, pretend = 0, frame = 248
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	.save {r4, fp, lr}
	.setfp fp, sp, #8
	add	fp, sp, #8
	.pad #252
	sub	sp, sp, #252
	str	r0, [fp, #-248]
	str	r1, [fp, #-252]
	str	r2, [fp, #-256]
	sub	r3, fp, #244
	mov	r0, r3
	ldr	r1, [fp, #-256]
	ldr	r2, [fp, #-256]
	mov	r3, #5
.LEHB8:
	bl	_ZN2cv3Mat5zerosEiii
.LEHE8:
	sub	r3, fp, #244
	ldr	r0, [fp, #-252]
	mov	r1, r3
.LEHB9:
	bl	_ZN2cv3MataSERKNS_7MatExprE
.LEHE9:
	sub	r3, fp, #244
	mov	r0, r3
.LEHB10:
	bl	_ZN2cv7MatExprD1Ev
.LEHE10:
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L98
.L101:
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L99
.L100:
	ldr	r0, [fp, #-248]
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-20]
	bl	_ZN2cv3Mat2atIhEERT_ii
	mov	r3, r0
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r4, r3
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	ldr	r0, [fp, #-248]
	ldr	r1, [fp, #-16]
	mov	r2, r3
	bl	_ZN2cv3Mat2atIhEERT_ii
	mov	r3, r0
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r0, [fp, #-252]
	mov	r1, r4
	mov	r2, r3
	bl	_ZN2cv3Mat2atIfEERT_ii
	mov	r3, r0
	flds	s15, [r3]
	flds	s14, .L105
	fadds	s15, s15, s14
	fsts	s15, [r3]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L99:
	ldr	r3, [fp, #-248]
	ldr	r3, [r3, #12]
	sub	r2, r3, #1
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bgt	.L100
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L98:
	ldr	r3, [fp, #-248]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bgt	.L101
	b	.L104
.L103:
	sub	r3, fp, #244
	mov	r0, r3
	bl	_ZN2cv7MatExprD1Ev
.LEHB11:
	bl	__cxa_end_cleanup
.LEHE11:
.L104:
	sub	sp, fp, #8
	@ sp needed
	ldmfd	sp!, {r4, fp, pc}
.L106:
	.align	2
.L105:
	.word	1065353216
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA5521:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5521-.LLSDACSB5521
.LLSDACSB5521:
	.uleb128 .LEHB8-.LFB5521
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB5521
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L103-.LFB5521
	.uleb128 0
	.uleb128 .LEHB10-.LFB5521
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB5521
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE5521:
	.text
	.fnend
	.size	_Z21getCoOccurrenceMatrixN2cv3MatERS0_i, .-_Z21getCoOccurrenceMatrixN2cv3MatERS0_i
	.align	2
	.global	_Z27normalizeCoOccurrenceMatrixN2cv3MatERS0_S0_i
	.type	_Z27normalizeCoOccurrenceMatrixN2cv3MatERS0_S0_i, %function
_Z27normalizeCoOccurrenceMatrixN2cv3MatERS0_S0_i:
	.fnstart
.LFB5522:
	@ args = 0, pretend = 0, frame = 248
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	.save {r4, fp, lr}
	.setfp fp, sp, #8
	add	fp, sp, #8
	.pad #252
	sub	sp, sp, #252
	str	r0, [fp, #-248]
	str	r1, [fp, #-252]
	str	r2, [fp, #-256]
	str	r3, [fp, #-260]
	sub	r3, fp, #244
	mov	r0, r3
	ldr	r1, [fp, #-260]
	ldr	r2, [fp, #-260]
	mov	r3, #5
.LEHB12:
	bl	_ZN2cv3Mat5zerosEiii
.LEHE12:
	sub	r3, fp, #244
	ldr	r0, [fp, #-252]
	mov	r1, r3
.LEHB13:
	bl	_ZN2cv3MataSERKNS_7MatExprE
.LEHE13:
	sub	r3, fp, #244
	mov	r0, r3
.LEHB14:
	bl	_ZN2cv7MatExprD1Ev
.LEHE14:
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L108
.L111:
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L109
.L110:
	ldr	r0, [fp, #-252]
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-20]
	bl	_ZN2cv3Mat2atIfEERT_ii
	mov	r4, r0
	ldr	r0, [fp, #-248]
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-20]
	bl	_ZN2cv3Mat2atIfEERT_ii
	mov	r3, r0
	flds	s14, [r3]
	ldr	r3, [fp, #-256]
	ldr	r3, [r3, #8]
	ldr	r2, [fp, #-256]
	ldr	r2, [r2, #12]
	sub	r2, r2, #1
	mul	r3, r2, r3
	fmsr	s15, r3	@ int
	fsitos	s15, s15
	fdivs	s15, s14, s15
	fsts	s15, [r4]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L109:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-260]
	cmp	r2, r3
	blt	.L110
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L108:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-260]
	cmp	r2, r3
	blt	.L111
	b	.L114
.L113:
	sub	r3, fp, #244
	mov	r0, r3
	bl	_ZN2cv7MatExprD1Ev
.LEHB15:
	bl	__cxa_end_cleanup
.LEHE15:
.L114:
	sub	sp, fp, #8
	@ sp needed
	ldmfd	sp!, {r4, fp, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA5522:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5522-.LLSDACSB5522
.LLSDACSB5522:
	.uleb128 .LEHB12-.LFB5522
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB5522
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L113-.LFB5522
	.uleb128 0
	.uleb128 .LEHB14-.LFB5522
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LFB5522
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSE5522:
	.text
	.fnend
	.size	_Z27normalizeCoOccurrenceMatrixN2cv3MatERS0_S0_i, .-_Z27normalizeCoOccurrenceMatrixN2cv3MatERS0_S0_i
	.align	2
	.global	_Z11getFeaturesRSt6vectorIdSaIdEEN2cv3MatEi
	.type	_Z11getFeaturesRSt6vectorIdSaIdEEN2cv3MatEi, %function
_Z11getFeaturesRSt6vectorIdSaIdEEN2cv3MatEi:
	.fnstart
.LFB5523:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	fstmfdd	sp!, {d8}
	.vsave {d8}
	.setfp fp, sp, #12
	add	fp, sp, #12
	.pad #88
	sub	sp, sp, #88
	str	r0, [fp, #-88]
	str	r1, [fp, #-92]
	str	r2, [fp, #-96]
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L116
.L117:
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-84]
	sub	r3, fp, #84
	ldr	r0, [fp, #-88]
	mov	r1, r3
	bl	_ZNSt6vectorIdSaIdEE9push_backERKd
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L116:
	ldr	r3, [fp, #-24]
	cmp	r3, #8
	ble	.L117
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-36]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-44]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-52]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-60]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-68]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-76]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L118
.L123:
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L119
.L122:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	rsb	r3, r3, r2
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-20]
	rsb	r2, r2, r1
	mul	r3, r2, r3
	fmsr	s15, r3	@ int
	fsitos	s16, s15
	ldr	r0, [fp, #-92]
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-20]
	bl	_ZN2cv3Mat2atIfEERT_ii
	mov	r3, r0
	flds	s15, [r3]
	fmuls	s16, s16, s15
	ldr	r0, [fp, #-88]
	mov	r1, #0
	bl	_ZNSt6vectorIdSaIdEEixEj
	mov	r3, r0
	fldd	d6, [r3]
	fcvtds	d7, s16
	faddd	d7, d6, d7
	fstd	d7, [r3]
	ldr	r0, [fp, #-92]
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-20]
	bl	_ZN2cv3Mat2atIfEERT_ii
	mov	r3, r0
	flds	s16, [r3]
	ldr	r0, [fp, #-92]
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-20]
	bl	_ZN2cv3Mat2atIfEERT_ii
	mov	r3, r0
	flds	s15, [r3]
	fmuls	s16, s16, s15
	ldr	r0, [fp, #-88]
	mov	r1, #2
	bl	_ZNSt6vectorIdSaIdEEixEj
	mov	r3, r0
	fldd	d6, [r3]
	fcvtds	d7, s16
	faddd	d7, d6, d7
	fstd	d7, [r3]
	ldr	r0, [fp, #-92]
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-20]
	bl	_ZN2cv3Mat2atIfEERT_ii
	mov	r3, r0
	flds	s14, [r3]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	rsb	r3, r3, r2
	cmp	r3, #0
	rsblt	r3, r3, #0
	add	r3, r3, #1
	fmsr	s15, r3	@ int
	fsitos	s15, s15
	fdivs	s16, s14, s15
	ldr	r0, [fp, #-88]
	mov	r1, #3
	bl	_ZNSt6vectorIdSaIdEEixEj
	mov	r3, r0
	fldd	d6, [r3]
	fcvtds	d7, s16
	faddd	d7, d6, d7
	fstd	d7, [r3]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	beq	.L120
	ldr	r0, [fp, #-92]
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-20]
	bl	_ZN2cv3Mat2atIfEERT_ii
	mov	r3, r0
	flds	s14, [r3]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	rsb	r3, r3, r2
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-20]
	rsb	r2, r2, r1
	mul	r3, r2, r3
	add	r3, r3, #1
	fmsr	s15, r3	@ int
	fsitos	s15, s15
	fdivs	s16, s14, s15
	ldr	r0, [fp, #-88]
	mov	r1, #4
	bl	_ZNSt6vectorIdSaIdEEixEj
	mov	r3, r0
	fldd	d6, [r3]
	fcvtds	d7, s16
	faddd	d7, d6, d7
	fstd	d7, [r3]
	ldr	r0, [fp, #-92]
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-20]
	bl	_ZN2cv3Mat2atIfEERT_ii
	mov	r3, r0
	flds	s14, [r3]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	rsb	r3, r3, r2
	cmp	r3, #0
	rsblt	r3, r3, #0
	fmsr	s15, r3	@ int
	fsitos	s15, s15
	fmuls	s16, s14, s15
	ldr	r0, [fp, #-88]
	mov	r1, #6
	bl	_ZNSt6vectorIdSaIdEEixEj
	mov	r3, r0
	fldd	d6, [r3]
	fcvtds	d7, s16
	faddd	d7, d6, d7
	fstd	d7, [r3]
.L120:
	ldr	r0, [fp, #-92]
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-20]
	bl	_ZN2cv3Mat2atIfEERT_ii
	mov	r3, r0
	flds	s15, [r3]
	fcmpzs	s15
	fmstat
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L121
	ldr	r0, [fp, #-92]
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-20]
	bl	_ZN2cv3Mat2atIfEERT_ii
	mov	r3, r0
	flds	s15, [r3]
	fcvtds	d8, s15
	ldr	r0, [fp, #-92]
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-20]
	bl	_ZN2cv3Mat2atIfEERT_ii
	mov	r3, r0
	flds	s15, [r3]
	fcvtds	d7, s15
	fcpyd	d0, d7
	bl	log10
	fcpyd	d7, d0
	fmuld	d8, d8, d7
	ldr	r0, [fp, #-88]
	mov	r1, #5
	bl	_ZNSt6vectorIdSaIdEEixEj
	mov	r3, r0
	fldd	d7, [r3]
	faddd	d7, d7, d8
	fstd	d7, [r3]
.L121:
	ldr	r0, [fp, #-92]
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-20]
	bl	_ZN2cv3Mat2atIfEERT_ii
	mov	r3, r0
	flds	s16, [r3]
	ldr	r0, [fp, #-92]
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-20]
	bl	_ZN2cv3Mat2atIfEERT_ii
	mov	r3, r0
	flds	s15, [r3]
	fmuls	s16, s16, s15
	ldr	r0, [fp, #-88]
	mov	r1, #7
	bl	_ZNSt6vectorIdSaIdEEixEj
	mov	r3, r0
	fldd	d6, [r3]
	fcvtds	d7, s16
	faddd	d7, d6, d7
	fstd	d7, [r3]
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-20]
	mul	r3, r2, r3
	fmsr	s15, r3	@ int
	fsitos	s16, s15
	ldr	r0, [fp, #-92]
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-20]
	bl	_ZN2cv3Mat2atIfEERT_ii
	mov	r3, r0
	flds	s15, [r3]
	fmuls	s15, s16, s15
	fcvtds	d7, s15
	fldd	d6, [fp, #-36]
	faddd	d7, d6, d7
	fstd	d7, [fp, #-36]
	ldr	r3, [fp, #-16]
	fmsr	s15, r3	@ int
	fsitos	s16, s15
	ldr	r0, [fp, #-92]
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-20]
	bl	_ZN2cv3Mat2atIfEERT_ii
	mov	r3, r0
	flds	s15, [r3]
	fmuls	s15, s16, s15
	fcvtds	d7, s15
	fldd	d6, [fp, #-44]
	faddd	d7, d6, d7
	fstd	d7, [fp, #-44]
	ldr	r3, [fp, #-20]
	fmsr	s15, r3	@ int
	fsitos	s16, s15
	ldr	r0, [fp, #-92]
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-20]
	bl	_ZN2cv3Mat2atIfEERT_ii
	mov	r3, r0
	flds	s15, [r3]
	fmuls	s15, s16, s15
	fcvtds	d7, s15
	fldd	d6, [fp, #-52]
	faddd	d7, d6, d7
	fstd	d7, [fp, #-52]
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-16]
	mul	r3, r2, r3
	fmsr	s15, r3	@ int
	fsitos	s16, s15
	ldr	r0, [fp, #-92]
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-20]
	bl	_ZN2cv3Mat2atIfEERT_ii
	mov	r3, r0
	flds	s15, [r3]
	fmuls	s15, s16, s15
	fcvtds	d7, s15
	fldd	d6, [fp, #-68]
	faddd	d7, d6, d7
	fstd	d7, [fp, #-68]
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-20]
	mul	r3, r2, r3
	fmsr	s15, r3	@ int
	fsitos	s16, s15
	ldr	r0, [fp, #-92]
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-20]
	bl	_ZN2cv3Mat2atIfEERT_ii
	mov	r3, r0
	flds	s15, [r3]
	fmuls	s15, s16, s15
	fcvtds	d7, s15
	fldd	d6, [fp, #-76]
	faddd	d7, d6, d7
	fstd	d7, [fp, #-76]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L119:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-96]
	cmp	r2, r3
	blt	.L122
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L118:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-96]
	cmp	r2, r3
	blt	.L123
	ldr	r0, [fp, #-88]
	mov	r1, #5
	bl	_ZNSt6vectorIdSaIdEEixEj
	mov	r3, r0
	fldd	d7, [r3]
	fnegd	d7, d7
	fstd	d7, [r3]
	fldd	d6, [fp, #-44]
	fldd	d7, [fp, #-44]
	fmuld	d7, d6, d7
	fldd	d6, [fp, #-68]
	fsubd	d7, d6, d7
	fstd	d7, [fp, #-68]
	fldd	d6, [fp, #-52]
	fldd	d7, [fp, #-52]
	fmuld	d7, d6, d7
	fldd	d6, [fp, #-76]
	fsubd	d7, d6, d7
	fstd	d7, [fp, #-76]
	fldd	d0, [fp, #-68]
	bl	sqrt
	fstd	d0, [fp, #-68]
	fldd	d0, [fp, #-76]
	bl	sqrt
	fstd	d0, [fp, #-76]
	fldd	d6, [fp, #-68]
	fldd	d7, [fp, #-76]
	fmuld	d7, d6, d7
	fstd	d7, [fp, #-60]
	fldd	d7, [fp, #-60]
	fcmpzd	d7
	fmstat
	bne	.L124
	mov	r2, #0
	ldr	r3, .L129+8
	strd	r2, [fp, #-60]
.L124:
	ldr	r0, [fp, #-88]
	mov	r1, #1
	bl	_ZNSt6vectorIdSaIdEEixEj
	mov	r3, r0
	fldd	d6, [fp, #-44]
	fldd	d7, [fp, #-52]
	fmuld	d7, d6, d7
	fldd	d6, [fp, #-36]
	fsubd	d6, d6, d7
	fldd	d7, [fp, #-60]
	fdivd	d7, d6, d7
	fstd	d7, [r3]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L125
.L128:
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L126
.L127:
	ldr	r3, [fp, #-16]
	fmsr	s15, r3	@ int
	fsitod	d6, s15
	fldd	d5, [fp, #-44]
	fldd	d7, [fp, #-52]
	faddd	d7, d5, d7
	fldd	d5, .L129
	fdivd	d7, d7, d5
	fsubd	d6, d6, d7
	ldr	r3, [fp, #-16]
	fmsr	s15, r3	@ int
	fsitod	d5, s15
	fldd	d4, [fp, #-44]
	fldd	d7, [fp, #-52]
	faddd	d7, d4, d7
	fldd	d4, .L129
	fdivd	d7, d7, d4
	fsubd	d7, d5, d7
	fmuld	d8, d6, d7
	ldr	r0, [fp, #-92]
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-20]
	bl	_ZN2cv3Mat2atIfEERT_ii
	mov	r3, r0
	flds	s15, [r3]
	fcvtds	d7, s15
	fmuld	d8, d8, d7
	ldr	r0, [fp, #-88]
	mov	r1, #8
	bl	_ZNSt6vectorIdSaIdEEixEj
	mov	r3, r0
	fldd	d7, [r3]
	faddd	d7, d7, d8
	fstd	d7, [r3]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L126:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-96]
	cmp	r2, r3
	blt	.L127
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L125:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-96]
	cmp	r2, r3
	blt	.L128
	ldr	r0, [fp, #-88]
	mov	r1, #9
	bl	_ZNSt6vectorIdSaIdEEixEj
	mov	r3, r0
	fldd	d7, [r3]
	fnegd	d7, d7
	fstd	d7, [r3]
	ldr	r0, [fp, #-88]
	mov	r1, #12
	bl	_ZNSt6vectorIdSaIdEEixEj
	mov	r3, r0
	fldd	d7, [r3]
	fnegd	d7, d7
	fstd	d7, [r3]
	sub	sp, fp, #12
	@ sp needed
	fldmfdd	sp!, {d8}
	ldmfd	sp!, {fp, pc}
.L130:
	.align	3
.L129:
	.word	0
	.word	1073741824
	.word	1072693248
	.fnend
	.size	_Z11getFeaturesRSt6vectorIdSaIdEEN2cv3MatEi, .-_Z11getFeaturesRSt6vectorIdSaIdEEN2cv3MatEi
	.align	2
	.global	_Z15glcm_extractionN2cv3MatEi
	.type	_Z15glcm_extractionN2cv3MatEi, %function
_Z15glcm_extractionN2cv3MatEi:
	.fnstart
.LFB5524:
	@ args = 0, pretend = 0, frame = 432
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #432
	sub	sp, sp, #432
	str	r0, [fp, #-424]
	str	r1, [fp, #-428]
	str	r2, [fp, #-432]
	ldr	r0, [fp, #-424]
.LEHB16:
	bl	_ZNSt6vectorIdSaIdEEC1Ev
.LEHE16:
	sub	r3, fp, #416
	mov	r0, r3
	bl	_ZN2cv3MatC1Ev
	sub	r3, fp, #360
	mov	r0, r3
	bl	_ZN2cv3MatC1Ev
	sub	r3, fp, #304
	mov	r0, r3
	bl	_ZN2cv3MatC1Ev
	sub	r2, fp, #248
	sub	r3, fp, #416
	mov	r0, r2
	mov	r1, r3
.LEHB17:
	bl	_ZN2cv12_OutputArrayC1ERNS_3MatE
	sub	r3, fp, #248
	ldr	r0, [fp, #-428]
	mov	r1, r3
	bl	_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE
	sub	r2, fp, #228
	sub	r3, fp, #416
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2cv3MatC1ERKS0_
.LEHE17:
	sub	r2, fp, #228
	sub	r3, fp, #360
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-432]
.LEHB18:
	bl	_Z21getCoOccurrenceMatrixN2cv3MatERS0_i
.LEHE18:
	sub	r3, fp, #228
	mov	r0, r3
.LEHB19:
	bl	_ZN2cv3MatD1Ev
	sub	r2, fp, #172
	sub	r3, fp, #360
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2cv3MatC1ERKS0_
.LEHE19:
	sub	r2, fp, #116
	sub	r3, fp, #416
	mov	r0, r2
	mov	r1, r3
.LEHB20:
	bl	_ZN2cv3MatC1ERKS0_
.LEHE20:
	sub	r1, fp, #172
	sub	r2, fp, #304
	sub	r3, fp, #116
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [fp, #-432]
.LEHB21:
	bl	_Z27normalizeCoOccurrenceMatrixN2cv3MatERS0_S0_i
.LEHE21:
	sub	r3, fp, #116
	mov	r0, r3
.LEHB22:
	bl	_ZN2cv3MatD1Ev
.LEHE22:
	sub	r3, fp, #172
	mov	r0, r3
.LEHB23:
	bl	_ZN2cv3MatD1Ev
	sub	r2, fp, #60
	sub	r3, fp, #304
	mov	r0, r2
	mov	r1, r3
	bl	_ZN2cv3MatC1ERKS0_
.LEHE23:
	sub	r3, fp, #60
	ldr	r0, [fp, #-424]
	mov	r1, r3
	ldr	r2, [fp, #-432]
.LEHB24:
	bl	_Z11getFeaturesRSt6vectorIdSaIdEEN2cv3MatEi
.LEHE24:
	sub	r3, fp, #60
	mov	r0, r3
.LEHB25:
	bl	_ZN2cv3MatD1Ev
	sub	r3, fp, #416
	mov	r0, r3
	bl	_ZN2cv3Mat7releaseEv
	sub	r3, fp, #360
	mov	r0, r3
	bl	_ZN2cv3Mat7releaseEv
	sub	r3, fp, #304
	mov	r0, r3
	bl	_ZN2cv3Mat7releaseEv
.LEHE25:
	mov	r0, r0	@ nop
	sub	r3, fp, #304
	mov	r0, r3
.LEHB26:
	bl	_ZN2cv3MatD1Ev
.LEHE26:
	sub	r3, fp, #360
	mov	r0, r3
.LEHB27:
	bl	_ZN2cv3MatD1Ev
.LEHE27:
	sub	r3, fp, #416
	mov	r0, r3
.LEHB28:
	bl	_ZN2cv3MatD1Ev
.LEHE28:
	b	.L149
.L145:
	sub	r3, fp, #228
	mov	r0, r3
	bl	_ZN2cv3MatD1Ev
	b	.L134
.L147:
	sub	r3, fp, #116
	mov	r0, r3
	bl	_ZN2cv3MatD1Ev
	b	.L136
.L146:
.L136:
	sub	r3, fp, #172
	mov	r0, r3
	bl	_ZN2cv3MatD1Ev
	b	.L134
.L148:
	sub	r3, fp, #60
	mov	r0, r3
	bl	_ZN2cv3MatD1Ev
	b	.L134
.L144:
.L134:
	sub	r3, fp, #304
	mov	r0, r3
	bl	_ZN2cv3MatD1Ev
	b	.L138
.L143:
.L138:
	sub	r3, fp, #360
	mov	r0, r3
	bl	_ZN2cv3MatD1Ev
	b	.L139
.L142:
.L139:
	sub	r3, fp, #416
	mov	r0, r3
	bl	_ZN2cv3MatD1Ev
	b	.L140
.L141:
.L140:
	ldr	r0, [fp, #-424]
	bl	_ZNSt6vectorIdSaIdEED1Ev
.LEHB29:
	bl	__cxa_end_cleanup
.LEHE29:
.L149:
	ldr	r0, [fp, #-424]
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA5524:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5524-.LLSDACSB5524
.LLSDACSB5524:
	.uleb128 .LEHB16-.LFB5524
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB17-.LFB5524
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L144-.LFB5524
	.uleb128 0
	.uleb128 .LEHB18-.LFB5524
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L145-.LFB5524
	.uleb128 0
	.uleb128 .LEHB19-.LFB5524
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L144-.LFB5524
	.uleb128 0
	.uleb128 .LEHB20-.LFB5524
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L146-.LFB5524
	.uleb128 0
	.uleb128 .LEHB21-.LFB5524
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L147-.LFB5524
	.uleb128 0
	.uleb128 .LEHB22-.LFB5524
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L146-.LFB5524
	.uleb128 0
	.uleb128 .LEHB23-.LFB5524
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L144-.LFB5524
	.uleb128 0
	.uleb128 .LEHB24-.LFB5524
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L148-.LFB5524
	.uleb128 0
	.uleb128 .LEHB25-.LFB5524
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L144-.LFB5524
	.uleb128 0
	.uleb128 .LEHB26-.LFB5524
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L143-.LFB5524
	.uleb128 0
	.uleb128 .LEHB27-.LFB5524
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L142-.LFB5524
	.uleb128 0
	.uleb128 .LEHB28-.LFB5524
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L141-.LFB5524
	.uleb128 0
	.uleb128 .LEHB29-.LFB5524
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
.LLSDACSE5524:
	.text
	.fnend
	.size	_Z15glcm_extractionN2cv3MatEi, .-_Z15glcm_extractionN2cv3MatEi
	.section	.rodata
	.align	2
.LC5:
	.ascii	"../Imagens/005_passo.JPG\000"
	.align	2
.LC6:
	.ascii	"\012Data %d: %f\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	.fnstart
.LFB5525:
	@ args = 0, pretend = 0, frame = 152
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #152
	sub	sp, sp, #152
	sub	r3, fp, #80
	mov	r0, r3
	bl	_ZNSaIcEC1Ev
	sub	r2, fp, #84
	sub	r3, fp, #80
	mov	r0, r2
	ldr	r1, .L169
	mov	r2, r3
.LEHB30:
	bl	_ZNSsC1EPKcRKSaIcE
.LEHE30:
	sub	r2, fp, #152
	sub	r3, fp, #84
	mov	r0, r2
	mov	r1, r3
	mov	r2, #0
.LEHB31:
	bl	_ZN2cv6imreadERKSsi
.LEHE31:
	sub	r3, fp, #84
	mov	r0, r3
.LEHB32:
	bl	_ZNSsD1Ev
.LEHE32:
	sub	r3, fp, #80
	mov	r0, r3
	bl	_ZNSaIcED1Ev
	sub	r3, fp, #96
	mov	r0, r3
.LEHB33:
	bl	_ZNSt6vectorIdSaIdEEC1Ev
.LEHE33:
	sub	r2, fp, #64
	sub	r3, fp, #152
	mov	r0, r2
	mov	r1, r3
.LEHB34:
	bl	_ZN2cv3MatC1ERKS0_
.LEHE34:
	sub	r2, fp, #76
	sub	r3, fp, #64
	mov	r0, r2
	mov	r1, r3
	mov	r2, #256
.LEHB35:
	bl	_Z15glcm_extractionN2cv3MatEi
.LEHE35:
	sub	r2, fp, #96
	sub	r3, fp, #76
	mov	r0, r2
	mov	r1, r3
.LEHB36:
	bl	_ZNSt6vectorIdSaIdEEaSERKS1_
.LEHE36:
	sub	r3, fp, #76
	mov	r0, r3
.LEHB37:
	bl	_ZNSt6vectorIdSaIdEED1Ev
.LEHE37:
	sub	r3, fp, #64
	mov	r0, r3
.LEHB38:
	bl	_ZN2cv3MatD1Ev
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L151
.L152:
	ldr	r3, [fp, #-8]
	sub	r2, fp, #96
	mov	r0, r2
	mov	r1, r3
	bl	_ZNSt6vectorIdSaIdEEixEj
	mov	r3, r0
	ldrd	r2, [r3]
	ldr	r0, .L169+4
	ldr	r1, [fp, #-8]
	bl	printf
.LEHE38:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L151:
	ldr	r3, [fp, #-8]
	cmp	r3, #9
	ble	.L152
	sub	r3, fp, #96
	mov	r0, r3
.LEHB39:
	bl	_ZNSt6vectorIdSaIdEED1Ev
.LEHE39:
	sub	r3, fp, #152
	mov	r0, r3
.LEHB40:
	bl	_ZN2cv3MatD1Ev
.LEHE40:
	mov	r3, #0
	b	.L168
.L162:
	sub	r3, fp, #84
	mov	r0, r3
	bl	_ZNSsD1Ev
	b	.L155
.L163:
	sub	r3, fp, #152
	mov	r0, r3
	bl	_ZN2cv3MatD1Ev
	b	.L155
.L161:
.L155:
	sub	r3, fp, #80
	mov	r0, r3
	bl	_ZNSaIcED1Ev
.LEHB41:
	bl	__cxa_end_cleanup
.LEHE41:
.L167:
	sub	r3, fp, #76
	mov	r0, r3
	bl	_ZNSt6vectorIdSaIdEED1Ev
	b	.L158
.L166:
.L158:
	sub	r3, fp, #64
	mov	r0, r3
	bl	_ZN2cv3MatD1Ev
	b	.L159
.L165:
.L159:
	sub	r3, fp, #96
	mov	r0, r3
	bl	_ZNSt6vectorIdSaIdEED1Ev
	b	.L160
.L164:
.L160:
	sub	r3, fp, #152
	mov	r0, r3
	bl	_ZN2cv3MatD1Ev
.LEHB42:
	bl	__cxa_end_cleanup
.LEHE42:
.L168:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L170:
	.align	2
.L169:
	.word	.LC5
	.word	.LC6
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA5525:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5525-.LLSDACSB5525
.LLSDACSB5525:
	.uleb128 .LEHB30-.LFB5525
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L161-.LFB5525
	.uleb128 0
	.uleb128 .LEHB31-.LFB5525
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L162-.LFB5525
	.uleb128 0
	.uleb128 .LEHB32-.LFB5525
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L163-.LFB5525
	.uleb128 0
	.uleb128 .LEHB33-.LFB5525
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L164-.LFB5525
	.uleb128 0
	.uleb128 .LEHB34-.LFB5525
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L165-.LFB5525
	.uleb128 0
	.uleb128 .LEHB35-.LFB5525
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L166-.LFB5525
	.uleb128 0
	.uleb128 .LEHB36-.LFB5525
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L167-.LFB5525
	.uleb128 0
	.uleb128 .LEHB37-.LFB5525
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L166-.LFB5525
	.uleb128 0
	.uleb128 .LEHB38-.LFB5525
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L165-.LFB5525
	.uleb128 0
	.uleb128 .LEHB39-.LFB5525
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L164-.LFB5525
	.uleb128 0
	.uleb128 .LEHB40-.LFB5525
	.uleb128 .LEHE40-.LEHB40
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB41-.LFB5525
	.uleb128 .LEHE41-.LEHB41
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB42-.LFB5525
	.uleb128 .LEHE42-.LEHB42
	.uleb128 0
	.uleb128 0
.LLSDACSE5525:
	.text
	.fnend
	.size	main, .-main
	.section	.text._ZN2cv5Size_IiEC2Eii,"axG",%progbits,_ZN2cv5Size_IiEC5Eii,comdat
	.align	2
	.weak	_ZN2cv5Size_IiEC2Eii
	.type	_ZN2cv5Size_IiEC2Eii, %function
_ZN2cv5Size_IiEC2Eii:
	.fnstart
.LFB5622:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-12]
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-16]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN2cv5Size_IiEC2Eii, .-_ZN2cv5Size_IiEC2Eii
	.weak	_ZN2cv5Size_IiEC1Eii
_ZN2cv5Size_IiEC1Eii = _ZN2cv5Size_IiEC2Eii
	.section	.text._ZNSt6vectorIdSaIdEEC2Ev,"axG",%progbits,_ZNSt6vectorIdSaIdEEC5Ev,comdat
	.align	2
	.weak	_ZNSt6vectorIdSaIdEEC2Ev
	.type	_ZNSt6vectorIdSaIdEEC2Ev, %function
_ZNSt6vectorIdSaIdEEC2Ev:
	.fnstart
.LFB5722:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	_ZNSt12_Vector_baseIdSaIdEEC2Ev
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZNSt6vectorIdSaIdEEC2Ev, .-_ZNSt6vectorIdSaIdEEC2Ev
	.weak	_ZNSt6vectorIdSaIdEEC1Ev
_ZNSt6vectorIdSaIdEEC1Ev = _ZNSt6vectorIdSaIdEEC2Ev
	.section	.text._ZNSt6vectorIdSaIdEED2Ev,"axG",%progbits,_ZNSt6vectorIdSaIdEED5Ev,comdat
	.align	2
	.weak	_ZNSt6vectorIdSaIdEED2Ev
	.type	_ZNSt6vectorIdSaIdEED2Ev, %function
_ZNSt6vectorIdSaIdEED2Ev:
	.fnstart
.LFB5725:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, fp, lr}
	.save {r4, r5, fp, lr}
	.setfp fp, sp, #12
	add	fp, sp, #12
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r5, [r3]
	ldr	r3, [fp, #-16]
	ldr	r4, [r3, #4]
	ldr	r3, [fp, #-16]
	mov	r0, r3
	bl	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	mov	r3, r0
	mov	r0, r5
	mov	r1, r4
	mov	r2, r3
.LEHB43:
	bl	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
.LEHE43:
	ldr	r3, [fp, #-16]
	mov	r0, r3
.LEHB44:
	bl	_ZNSt12_Vector_baseIdSaIdEED2Ev
.LEHE44:
	ldr	r3, [fp, #-16]
	b	.L182
.L181:
	ldr	r3, [fp, #-16]
	mov	r0, r3
	bl	_ZNSt12_Vector_baseIdSaIdEED2Ev
.LEHB45:
	bl	__cxa_end_cleanup
.LEHE45:
.L182:
	mov	r0, r3
	sub	sp, fp, #12
	@ sp needed
	ldmfd	sp!, {r4, r5, fp, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA5725:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5725-.LLSDACSB5725
.LLSDACSB5725:
	.uleb128 .LEHB43-.LFB5725
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L181-.LFB5725
	.uleb128 0
	.uleb128 .LEHB44-.LFB5725
	.uleb128 .LEHE44-.LEHB44
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB45-.LFB5725
	.uleb128 .LEHE45-.LEHB45
	.uleb128 0
	.uleb128 0
.LLSDACSE5725:
	.section	.text._ZNSt6vectorIdSaIdEED2Ev,"axG",%progbits,_ZNSt6vectorIdSaIdEED5Ev,comdat
	.fnend
	.size	_ZNSt6vectorIdSaIdEED2Ev, .-_ZNSt6vectorIdSaIdEED2Ev
	.weak	_ZNSt6vectorIdSaIdEED1Ev
_ZNSt6vectorIdSaIdEED1Ev = _ZNSt6vectorIdSaIdEED2Ev
	.section	.text._ZN7cvflann7anyimpl15base_any_policyC2Ev,"axG",%progbits,_ZN7cvflann7anyimpl15base_any_policyC5Ev,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl15base_any_policyC2Ev
	.type	_ZN7cvflann7anyimpl15base_any_policyC2Ev, %function
_ZN7cvflann7anyimpl15base_any_policyC2Ev:
	.fnstart
.LFB5756:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r2, .L186
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L187:
	.align	2
.L186:
	.word	_ZTVN7cvflann7anyimpl15base_any_policyE+8
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl15base_any_policyC2Ev, .-_ZN7cvflann7anyimpl15base_any_policyC2Ev
	.weak	_ZN7cvflann7anyimpl15base_any_policyC1Ev
_ZN7cvflann7anyimpl15base_any_policyC1Ev = _ZN7cvflann7anyimpl15base_any_policyC2Ev
	.section	.text._ZN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEEC2Ev,"axG",%progbits,_ZN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEEC5Ev,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEEC2Ev
	.type	_ZN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEEC2Ev, %function
_ZN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEEC2Ev:
	.fnstart
.LFB5758:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	_ZN7cvflann7anyimpl15base_any_policyC2Ev
	ldr	r3, [fp, #-8]
	ldr	r2, .L191
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L192:
	.align	2
.L191:
	.word	_ZTVN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEEE+8
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEEC2Ev, .-_ZN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEEC2Ev
	.weak	_ZN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEEC1Ev
_ZN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEEC1Ev = _ZN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEEC2Ev
	.section	.text._ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEEC2Ev,"axG",%progbits,_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEEC5Ev,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEEC2Ev
	.type	_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEEC2Ev, %function
_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEEC2Ev:
	.fnstart
.LFB5760:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	_ZN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEEC2Ev
	ldr	r3, [fp, #-8]
	ldr	r2, .L196
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L197:
	.align	2
.L196:
	.word	_ZTVN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEEE+8
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEEC2Ev, .-_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEEC2Ev
	.weak	_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEEC1Ev
_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEEC1Ev = _ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEEC2Ev
	.section	.text._ZN2cv3Mat2atIfEERT_ii,"axG",%progbits,_ZN2cv3Mat2atIfEERT_ii,comdat
	.align	2
	.weak	_ZN2cv3Mat2atIfEERT_ii
	.type	_ZN2cv3Mat2atIfEERT_ii, %function
_ZN2cv3Mat2atIfEERT_ii:
	.fnstart
.LFB5892:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #44]
	ldr	r3, [r3]
	ldr	r1, [fp, #-12]
	mul	r1, r1, r3
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #2
	add	r3, r1, r3
	add	r3, r2, r3
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN2cv3Mat2atIfEERT_ii, .-_ZN2cv3Mat2atIfEERT_ii
	.section	.text._ZN2cv3Mat2atIfEERT_i,"axG",%progbits,_ZN2cv3Mat2atIfEERT_i,comdat
	.align	2
	.weak	_ZN2cv3Mat2atIfEERT_i
	.type	_ZN2cv3Mat2atIfEERT_i, %function
_ZN2cv3Mat2atIfEERT_i:
	.fnstart
.LFB5893:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	_ZNK2cv3Mat12isContinuousEv
	mov	r3, r0
	cmp	r3, #0
	bne	.L201
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #40]
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L202
.L201:
	mov	r3, #1
	b	.L203
.L202:
	mov	r3, #0
.L203:
	cmp	r3, #0
	beq	.L204
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #2
	add	r3, r2, r3
	b	.L205
.L204:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #40]
	add	r3, r3, #4
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L206
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #44]
	ldr	r3, [r3]
	ldr	r1, [fp, #-20]
	mul	r3, r1, r3
	add	r3, r2, r3
	b	.L205
.L206:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-20]
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]
	ldr	r2, [fp, #-8]
	mul	r3, r2, r3
	ldr	r2, [fp, #-20]
	rsb	r3, r3, r2
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #44]
	ldr	r3, [r3]
	ldr	r1, [fp, #-8]
	mul	r1, r1, r3
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	add	r3, r1, r3
	add	r3, r2, r3
.L205:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZN2cv3Mat2atIfEERT_i, .-_ZN2cv3Mat2atIfEERT_i
	.section	.text._ZN2cv3Mat2atIhEERT_ii,"axG",%progbits,_ZN2cv3Mat2atIhEERT_ii,comdat
	.align	2
	.weak	_ZN2cv3Mat2atIhEERT_ii
	.type	_ZN2cv3Mat2atIhEERT_ii, %function
_ZN2cv3Mat2atIhEERT_ii:
	.fnstart
.LFB5894:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #44]
	ldr	r3, [r3]
	ldr	r1, [fp, #-12]
	mul	r1, r1, r3
	ldr	r3, [fp, #-16]
	add	r3, r1, r3
	add	r3, r2, r3
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN2cv3Mat2atIhEERT_ii, .-_ZN2cv3Mat2atIhEERT_ii
	.section	.text._ZNSt6vectorIdSaIdEE9push_backERKd,"axG",%progbits,_ZNSt6vectorIdSaIdEE9push_backERKd,comdat
	.align	2
	.weak	_ZNSt6vectorIdSaIdEE9push_backERKd
	.type	_ZNSt6vectorIdSaIdEE9push_backERKd, %function
_ZNSt6vectorIdSaIdEE9push_backERKd:
	.fnstart
.LFB5895:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	beq	.L210
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #4]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-12]
	bl	_ZN9__gnu_cxx14__alloc_traitsISaIdEE9constructIdEEvRS1_PdRKT_
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #4]
	add	r2, r3, #8
	ldr	r3, [fp, #-8]
	str	r2, [r3, #4]
	b	.L209
.L210:
	ldr	r0, [fp, #-8]
	bl	_ZNSt6vectorIdSaIdEE3endEv
	mov	r3, r0
	ldr	r0, [fp, #-8]
	mov	r1, r3
	ldr	r2, [fp, #-12]
	bl	_ZNSt6vectorIdSaIdEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPdS1_EERKd
.L209:
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZNSt6vectorIdSaIdEE9push_backERKd, .-_ZNSt6vectorIdSaIdEE9push_backERKd
	.section	.text._ZNSt6vectorIdSaIdEEixEj,"axG",%progbits,_ZNSt6vectorIdSaIdEEixEj,comdat
	.align	2
	.weak	_ZNSt6vectorIdSaIdEEixEj
	.type	_ZNSt6vectorIdSaIdEEixEj, %function
_ZNSt6vectorIdSaIdEEixEj:
	.fnstart
.LFB5896:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #3
	add	r3, r2, r3
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNSt6vectorIdSaIdEEixEj, .-_ZNSt6vectorIdSaIdEEixEj
	.section	.text._ZNSt6vectorIdSaIdEEaSERKS1_,"axG",%progbits,_ZNSt6vectorIdSaIdEEaSERKS1_,comdat
	.align	2
	.weak	_ZNSt6vectorIdSaIdEEaSERKS1_
	.type	_ZNSt6vectorIdSaIdEEaSERKS1_, %function
_ZNSt6vectorIdSaIdEEaSERKS1_:
	.fnstart
.LFB5900:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, fp, lr}
	.save {r4, r5, r6, fp, lr}
	.setfp fp, sp, #16
	add	fp, sp, #16
	.pad #20
	sub	sp, sp, #20
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	beq	.L215
	ldr	r0, [fp, #-36]
	bl	_ZNKSt6vectorIdSaIdEE4sizeEv
	str	r0, [fp, #-24]
	ldr	r0, [fp, #-32]
	bl	_ZNKSt6vectorIdSaIdEE8capacityEv
	mov	r2, r0
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	movcc	r3, #1
	movcs	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L216
	ldr	r0, [fp, #-36]
	bl	_ZNKSt6vectorIdSaIdEE5beginEv
	mov	r4, r0
	ldr	r0, [fp, #-36]
	bl	_ZNKSt6vectorIdSaIdEE3endEv
	mov	r3, r0
	ldr	r0, [fp, #-32]
	ldr	r1, [fp, #-24]
	mov	r2, r4
	bl	_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdjT_S9_
	mov	r3, r0
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-32]
	ldr	r5, [r3]
	ldr	r3, [fp, #-32]
	ldr	r4, [r3, #4]
	ldr	r3, [fp, #-32]
	mov	r0, r3
	bl	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	mov	r3, r0
	mov	r0, r5
	mov	r1, r4
	mov	r2, r3
	bl	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
	ldr	r1, [fp, #-32]
	ldr	r3, [fp, #-32]
	ldr	r2, [r3]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #8]
	mov	r0, r3
	ldr	r3, [fp, #-32]
	ldr	r3, [r3]
	rsb	r3, r3, r0
	mov	r3, r3, asr #3
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdj
	ldr	r3, [fp, #-32]
	ldr	r2, [fp, #-28]
	str	r2, [r3]
	ldr	r3, [fp, #-32]
	ldr	r2, [r3]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #3
	add	r2, r2, r3
	ldr	r3, [fp, #-32]
	str	r2, [r3, #8]
	b	.L217
.L216:
	ldr	r0, [fp, #-32]
	bl	_ZNKSt6vectorIdSaIdEE4sizeEv
	mov	r2, r0
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	movcs	r3, #1
	movcc	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L218
	ldr	r0, [fp, #-36]
	bl	_ZNKSt6vectorIdSaIdEE5beginEv
	mov	r5, r0
	ldr	r0, [fp, #-36]
	bl	_ZNKSt6vectorIdSaIdEE3endEv
	mov	r4, r0
	ldr	r0, [fp, #-32]
	bl	_ZNSt6vectorIdSaIdEE5beginEv
	mov	r3, r0
	mov	r0, r5
	mov	r1, r4
	mov	r2, r3
	bl	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_
	mov	r5, r0
	ldr	r0, [fp, #-32]
	bl	_ZNSt6vectorIdSaIdEE3endEv
	mov	r4, r0
	ldr	r3, [fp, #-32]
	mov	r0, r3
	bl	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	mov	r3, r0
	mov	r0, r5
	mov	r1, r4
	mov	r2, r3
	bl	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RSaIT0_E
	b	.L217
.L218:
	ldr	r3, [fp, #-36]
	ldr	r5, [r3]
	ldr	r3, [fp, #-36]
	ldr	r4, [r3]
	ldr	r0, [fp, #-32]
	bl	_ZNKSt6vectorIdSaIdEE4sizeEv
	mov	r3, r0
	mov	r3, r3, asl #3
	add	r2, r4, r3
	ldr	r3, [fp, #-32]
	ldr	r3, [r3]
	mov	r0, r5
	mov	r1, r2
	mov	r2, r3
	bl	_ZSt4copyIPdS0_ET0_T_S2_S1_
	ldr	r3, [fp, #-36]
	ldr	r4, [r3]
	ldr	r0, [fp, #-32]
	bl	_ZNKSt6vectorIdSaIdEE4sizeEv
	mov	r3, r0
	mov	r3, r3, asl #3
	add	r6, r4, r3
	ldr	r3, [fp, #-36]
	ldr	r5, [r3, #4]
	ldr	r3, [fp, #-32]
	ldr	r4, [r3, #4]
	ldr	r3, [fp, #-32]
	mov	r0, r3
	bl	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	mov	r3, r0
	mov	r0, r6
	mov	r1, r5
	mov	r2, r4
	bl	_ZSt22__uninitialized_copy_aIPdS0_dET0_T_S2_S1_RSaIT1_E
.L217:
	ldr	r3, [fp, #-32]
	ldr	r2, [r3]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #3
	add	r2, r2, r3
	ldr	r3, [fp, #-32]
	str	r2, [r3, #4]
.L215:
	ldr	r3, [fp, #-32]
	mov	r0, r3
	sub	sp, fp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, fp, pc}
	.fnend
	.size	_ZNSt6vectorIdSaIdEEaSERKS1_, .-_ZNSt6vectorIdSaIdEEaSERKS1_
	.section	.text._ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev,"axG",%progbits,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev, %function
_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev:
	.fnstart
.LFB6097:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r0, [fp, #-8]
	bl	_ZNSaIdED2Ev
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev
_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev = _ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseIdSaIdEEC2Ev,"axG",%progbits,_ZNSt12_Vector_baseIdSaIdEEC5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIdSaIdEEC2Ev
	.type	_ZNSt12_Vector_baseIdSaIdEEC2Ev, %function
_ZNSt12_Vector_baseIdSaIdEEC2Ev:
	.fnstart
.LFB6099:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1Ev
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZNSt12_Vector_baseIdSaIdEEC2Ev, .-_ZNSt12_Vector_baseIdSaIdEEC2Ev
	.weak	_ZNSt12_Vector_baseIdSaIdEEC1Ev
_ZNSt12_Vector_baseIdSaIdEEC1Ev = _ZNSt12_Vector_baseIdSaIdEEC2Ev
	.section	.text._ZNSt12_Vector_baseIdSaIdEED2Ev,"axG",%progbits,_ZNSt12_Vector_baseIdSaIdEED5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIdSaIdEED2Ev
	.type	_ZNSt12_Vector_baseIdSaIdEED2Ev, %function
_ZNSt12_Vector_baseIdSaIdEED2Ev:
	.fnstart
.LFB6102:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #8]
	mov	r1, r3
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	rsb	r3, r3, r1
	mov	r3, r3, asr #3
	ldr	r0, [fp, #-8]
	mov	r1, r2
	mov	r2, r3
.LEHB46:
	bl	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdj
.LEHE46:
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev
	ldr	r3, [fp, #-8]
	b	.L231
.L230:
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev
.LEHB47:
	bl	__cxa_end_cleanup
.LEHE47:
.L231:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA6102:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6102-.LLSDACSB6102
.LLSDACSB6102:
	.uleb128 .LEHB46-.LFB6102
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L230-.LFB6102
	.uleb128 0
	.uleb128 .LEHB47-.LFB6102
	.uleb128 .LEHE47-.LEHB47
	.uleb128 0
	.uleb128 0
.LLSDACSE6102:
	.section	.text._ZNSt12_Vector_baseIdSaIdEED2Ev,"axG",%progbits,_ZNSt12_Vector_baseIdSaIdEED5Ev,comdat
	.fnend
	.size	_ZNSt12_Vector_baseIdSaIdEED2Ev, .-_ZNSt12_Vector_baseIdSaIdEED2Ev
	.weak	_ZNSt12_Vector_baseIdSaIdEED1Ev
_ZNSt12_Vector_baseIdSaIdEED1Ev = _ZNSt12_Vector_baseIdSaIdEED2Ev
	.section	.text._ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,"axG",%progbits,_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, %function
_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv:
	.fnstart
.LFB6104:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIPddEvT_S1_RSaIT0_E,"axG",%progbits,_ZSt8_DestroyIPddEvT_S1_RSaIT0_E,comdat
	.align	2
	.weak	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
	.type	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E, %function
_ZSt8_DestroyIPddEvT_S1_RSaIT0_E:
	.fnstart
.LFB6105:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r0, [fp, #-8]
	ldr	r1, [fp, #-12]
	bl	_ZSt8_DestroyIPdEvT_S1_
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E, .-_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
	.section	.text._ZN7cvflann7anyimpl21typed_base_any_policyIPKcEC2Ev,"axG",%progbits,_ZN7cvflann7anyimpl21typed_base_any_policyIPKcEC5Ev,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl21typed_base_any_policyIPKcEC2Ev
	.type	_ZN7cvflann7anyimpl21typed_base_any_policyIPKcEC2Ev, %function
_ZN7cvflann7anyimpl21typed_base_any_policyIPKcEC2Ev:
	.fnstart
.LFB6135:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	_ZN7cvflann7anyimpl15base_any_policyC2Ev
	ldr	r3, [fp, #-8]
	ldr	r2, .L238
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L239:
	.align	2
.L238:
	.word	_ZTVN7cvflann7anyimpl21typed_base_any_policyIPKcEE+8
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl21typed_base_any_policyIPKcEC2Ev, .-_ZN7cvflann7anyimpl21typed_base_any_policyIPKcEC2Ev
	.weak	_ZN7cvflann7anyimpl21typed_base_any_policyIPKcEC1Ev
_ZN7cvflann7anyimpl21typed_base_any_policyIPKcEC1Ev = _ZN7cvflann7anyimpl21typed_base_any_policyIPKcEC2Ev
	.section	.text._ZN7cvflann7anyimpl16small_any_policyIPKcEC2Ev,"axG",%progbits,_ZN7cvflann7anyimpl16small_any_policyIPKcEC5Ev,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl16small_any_policyIPKcEC2Ev
	.type	_ZN7cvflann7anyimpl16small_any_policyIPKcEC2Ev, %function
_ZN7cvflann7anyimpl16small_any_policyIPKcEC2Ev:
	.fnstart
.LFB6137:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	_ZN7cvflann7anyimpl21typed_base_any_policyIPKcEC2Ev
	ldr	r3, [fp, #-8]
	ldr	r2, .L243
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L244:
	.align	2
.L243:
	.word	_ZTVN7cvflann7anyimpl16small_any_policyIPKcEE+8
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl16small_any_policyIPKcEC2Ev, .-_ZN7cvflann7anyimpl16small_any_policyIPKcEC2Ev
	.weak	_ZN7cvflann7anyimpl16small_any_policyIPKcEC1Ev
_ZN7cvflann7anyimpl16small_any_policyIPKcEC1Ev = _ZN7cvflann7anyimpl16small_any_policyIPKcEC2Ev
	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaIdEE9constructIdEEvRS1_PdRKT_,"axG",%progbits,_ZN9__gnu_cxx14__alloc_traitsISaIdEE9constructIdEEvRS1_PdRKT_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaIdEE9constructIdEEvRS1_PdRKT_
	.type	_ZN9__gnu_cxx14__alloc_traitsISaIdEE9constructIdEEvRS1_PdRKT_, %function
_ZN9__gnu_cxx14__alloc_traitsISaIdEE9constructIdEEvRS1_PdRKT_:
	.fnstart
.LFB6302:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r0, [fp, #-8]
	ldr	r1, [fp, #-12]
	ldr	r2, [fp, #-16]
	bl	_ZN9__gnu_cxx13new_allocatorIdE9constructEPdRKd
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZN9__gnu_cxx14__alloc_traitsISaIdEE9constructIdEEvRS1_PdRKT_, .-_ZN9__gnu_cxx14__alloc_traitsISaIdEE9constructIdEEvRS1_PdRKT_
	.section	.rodata
	.align	2
.LC7:
	.ascii	"vector::_M_insert_aux\000"
	.section	.text._ZNSt6vectorIdSaIdEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPdS1_EERKd,"axG",%progbits,_ZNSt6vectorIdSaIdEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPdS1_EERKd,comdat
	.align	2
	.weak	_ZNSt6vectorIdSaIdEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPdS1_EERKd
	.type	_ZNSt6vectorIdSaIdEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPdS1_EERKd, %function
_ZNSt6vectorIdSaIdEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPdS1_EERKd:
	.fnstart
.LFB6303:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, fp, lr}
	.save {r4, r5, fp, lr}
	.setfp fp, sp, #12
	add	fp, sp, #12
	.pad #48
	sub	sp, sp, #48
	str	r0, [fp, #-48]
	str	r1, [fp, #-52]
	str	r2, [fp, #-56]
	ldr	r3, [fp, #-48]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-48]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	beq	.L247
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-48]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-48]
	ldr	r3, [r3, #4]
	sub	r3, r3, #8
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	_ZN9__gnu_cxx14__alloc_traitsISaIdEE9constructIdEEvRS1_PdRKT_
	ldr	r3, [fp, #-48]
	ldr	r3, [r3, #4]
	add	r2, r3, #8
	ldr	r3, [fp, #-48]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-56]
	ldrd	r2, [r3]
	strd	r2, [fp, #-28]
	sub	r3, fp, #52
	mov	r0, r3
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	mov	r3, r0
	ldr	r1, [r3]
	ldr	r3, [fp, #-48]
	ldr	r3, [r3, #4]
	sub	r2, r3, #16
	ldr	r3, [fp, #-48]
	ldr	r3, [r3, #4]
	sub	r3, r3, #8
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
.LEHB48:
	bl	_ZSt13copy_backwardIPdS0_ET0_T_S2_S1_
	sub	r3, fp, #52
	mov	r0, r3
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	mov	r1, r0
	ldrd	r2, [fp, #-28]
	strd	r2, [r1]
	b	.L246
.L247:
	ldr	r0, [fp, #-48]
	mov	r1, #1
	ldr	r2, .L255
	bl	_ZNKSt6vectorIdSaIdEE12_M_check_lenEjPKc
	mov	r3, r0
	str	r3, [fp, #-32]
	ldr	r0, [fp, #-48]
	bl	_ZNSt6vectorIdSaIdEE5beginEv
	mov	r3, r0
	str	r3, [fp, #-44]
	sub	r2, fp, #52
	sub	r3, fp, #44
	mov	r0, r2
	mov	r1, r3
	bl	_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-48]
	mov	r0, r3
	ldr	r1, [fp, #-32]
	bl	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEj
.LEHE48:
	mov	r3, r0
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	str	r3, [fp, #-16]
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	ldr	r2, [fp, #-56]
	bl	_ZN9__gnu_cxx14__alloc_traitsISaIdEE9constructIdEEvRS1_PdRKT_
	mov	r3, #0
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-48]
	ldr	r5, [r3]
	sub	r3, fp, #52
	mov	r0, r3
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	mov	r3, r0
	ldr	r4, [r3]
	ldr	r3, [fp, #-48]
	mov	r0, r3
	bl	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	mov	r3, r0
	mov	r0, r5
	mov	r1, r4
	ldr	r2, [fp, #-40]
.LEHB49:
	bl	_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_
	mov	r3, r0
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	add	r3, r3, #8
	str	r3, [fp, #-16]
	sub	r3, fp, #52
	mov	r0, r3
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	mov	r3, r0
	ldr	r5, [r3]
	ldr	r3, [fp, #-48]
	ldr	r4, [r3, #4]
	ldr	r3, [fp, #-48]
	mov	r0, r3
	bl	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	mov	r3, r0
	mov	r0, r5
	mov	r1, r4
	ldr	r2, [fp, #-16]
	bl	_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_
.LEHE49:
	mov	r3, r0
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-48]
	ldr	r5, [r3]
	ldr	r3, [fp, #-48]
	ldr	r4, [r3, #4]
	ldr	r3, [fp, #-48]
	mov	r0, r3
	bl	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	mov	r3, r0
	mov	r0, r5
	mov	r1, r4
	mov	r2, r3
.LEHB50:
	bl	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-48]
	ldr	r2, [r3]
	ldr	r3, [fp, #-48]
	ldr	r3, [r3, #8]
	mov	r0, r3
	ldr	r3, [fp, #-48]
	ldr	r3, [r3]
	rsb	r3, r3, r0
	mov	r3, r3, asr #3
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdj
.LEHE50:
	ldr	r3, [fp, #-48]
	ldr	r2, [fp, #-40]
	str	r2, [r3]
	ldr	r3, [fp, #-48]
	ldr	r2, [fp, #-16]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-40]
	add	r2, r2, r3
	ldr	r3, [fp, #-48]
	str	r2, [r3, #8]
	b	.L246
.L254:
	bl	__cxa_end_catch
.LEHB51:
	bl	__cxa_end_cleanup
.LEHE51:
.L253:
	mov	r3, r0
	mov	r0, r3
	bl	__cxa_begin_catch
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L251
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
.LEHB52:
	bl	_ZN9__gnu_cxx14__alloc_traitsISaIdEE7destroyERS1_Pd
	b	.L252
.L251:
	ldr	r3, [fp, #-48]
	mov	r0, r3
	bl	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	mov	r3, r0
	ldr	r0, [fp, #-40]
	ldr	r1, [fp, #-16]
	mov	r2, r3
	bl	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
.L252:
	ldr	r3, [fp, #-48]
	mov	r0, r3
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-32]
	bl	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdj
	bl	__cxa_rethrow
.LEHE52:
.L246:
	sub	sp, fp, #12
	@ sp needed
	ldmfd	sp!, {r4, r5, fp, pc}
.L256:
	.align	2
.L255:
	.word	.LC7
	.personality	__gxx_personality_v0
	.handlerdata
	.align	2
.LLSDA6303:
	.byte	0xff
	.byte	0x90
	.uleb128 .LLSDATT6303-.LLSDATTD6303
.LLSDATTD6303:
	.byte	0x1
	.uleb128 .LLSDACSE6303-.LLSDACSB6303
.LLSDACSB6303:
	.uleb128 .LEHB48-.LFB6303
	.uleb128 .LEHE48-.LEHB48
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB49-.LFB6303
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L253-.LFB6303
	.uleb128 0x1
	.uleb128 .LEHB50-.LFB6303
	.uleb128 .LEHE50-.LEHB50
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB51-.LFB6303
	.uleb128 .LEHE51-.LEHB51
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB52-.LFB6303
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L254-.LFB6303
	.uleb128 0
.LLSDACSE6303:
	.byte	0x1
	.byte	0
	.align	2
	.word	0
.LLSDATT6303:
	.section	.text._ZNSt6vectorIdSaIdEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPdS1_EERKd,"axG",%progbits,_ZNSt6vectorIdSaIdEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPdS1_EERKd,comdat
	.fnend
	.size	_ZNSt6vectorIdSaIdEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPdS1_EERKd, .-_ZNSt6vectorIdSaIdEE13_M_insert_auxEN9__gnu_cxx17__normal_iteratorIPdS1_EERKd
	.section	.text._ZNSt6vectorIdSaIdEE3endEv,"axG",%progbits,_ZNSt6vectorIdSaIdEE3endEv,comdat
	.align	2
	.weak	_ZNSt6vectorIdSaIdEE3endEv
	.type	_ZNSt6vectorIdSaIdEE3endEv, %function
_ZNSt6vectorIdSaIdEE3endEv:
	.fnstart
.LFB6304:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	add	r3, r3, #4
	sub	r2, fp, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC1ERKS1_
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZNSt6vectorIdSaIdEE3endEv, .-_ZNSt6vectorIdSaIdEE3endEv
	.section	.text._ZNKSt6vectorIdSaIdEE4sizeEv,"axG",%progbits,_ZNKSt6vectorIdSaIdEE4sizeEv,comdat
	.align	2
	.weak	_ZNKSt6vectorIdSaIdEE4sizeEv
	.type	_ZNKSt6vectorIdSaIdEE4sizeEv, %function
_ZNKSt6vectorIdSaIdEE4sizeEv:
	.fnstart
.LFB6305:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	rsb	r3, r3, r2
	mov	r3, r3, asr #3
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNKSt6vectorIdSaIdEE4sizeEv, .-_ZNKSt6vectorIdSaIdEE4sizeEv
	.section	.text._ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,"axG",%progbits,_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,comdat
	.align	2
	.weak	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, %function
_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv:
	.fnstart
.LFB6307:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	.section	.text._ZNKSt6vectorIdSaIdEE5beginEv,"axG",%progbits,_ZNKSt6vectorIdSaIdEE5beginEv,comdat
	.align	2
	.weak	_ZNKSt6vectorIdSaIdEE5beginEv
	.type	_ZNKSt6vectorIdSaIdEE5beginEv, %function
_ZNKSt6vectorIdSaIdEE5beginEv:
	.fnstart
.LFB6311:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	sub	r2, fp, #12
	sub	r3, fp, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC1ERKS2_
	ldr	r3, [fp, #-12]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZNKSt6vectorIdSaIdEE5beginEv, .-_ZNKSt6vectorIdSaIdEE5beginEv
	.section	.text._ZNKSt6vectorIdSaIdEE3endEv,"axG",%progbits,_ZNKSt6vectorIdSaIdEE3endEv,comdat
	.align	2
	.weak	_ZNKSt6vectorIdSaIdEE3endEv
	.type	_ZNKSt6vectorIdSaIdEE3endEv, %function
_ZNKSt6vectorIdSaIdEE3endEv:
	.fnstart
.LFB6312:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-8]
	sub	r2, fp, #12
	sub	r3, fp, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC1ERKS2_
	ldr	r3, [fp, #-12]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZNKSt6vectorIdSaIdEE3endEv, .-_ZNKSt6vectorIdSaIdEE3endEv
	.section	.text._ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E,"axG",%progbits,_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E,comdat
	.align	2
	.weak	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E, %function
_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E:
	.fnstart
.LFB6313:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	str	r3, [fp, #-20]
	ldr	r0, [fp, #-8]
	ldr	r1, [fp, #-12]
	ldr	r2, [fp, #-16]
	bl	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E, .-_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E
	.section	.text._ZNKSt6vectorIdSaIdEE8capacityEv,"axG",%progbits,_ZNKSt6vectorIdSaIdEE8capacityEv,comdat
	.align	2
	.weak	_ZNKSt6vectorIdSaIdEE8capacityEv
	.type	_ZNKSt6vectorIdSaIdEE8capacityEv, %function
_ZNKSt6vectorIdSaIdEE8capacityEv:
	.fnstart
.LFB6314:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	rsb	r3, r3, r2
	mov	r3, r3, asr #3
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNKSt6vectorIdSaIdEE8capacityEv, .-_ZNKSt6vectorIdSaIdEE8capacityEv
	.section	.text._ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdjT_S9_,"axG",%progbits,_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdjT_S9_,comdat
	.align	2
	.weak	_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdjT_S9_
	.type	_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdjT_S9_, %function
_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdjT_S9_:
	.fnstart
.LFB6315:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #24
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-16]
	mov	r0, r3
	ldr	r1, [fp, #-20]
.LEHB53:
	bl	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEj
.LEHE53:
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	mov	r0, r3
	bl	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	mov	r3, r0
	ldr	r0, [fp, #-24]
	ldr	r1, [fp, #-28]
	ldr	r2, [fp, #-8]
.LEHB54:
	bl	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E
.LEHE54:
	ldr	r3, [fp, #-8]
	b	.L277
.L276:
	bl	__cxa_end_catch
.LEHB55:
	bl	__cxa_end_cleanup
.LEHE55:
.L275:
	mov	r3, r0
	mov	r0, r3
	bl	__cxa_begin_catch
	ldr	r3, [fp, #-16]
	mov	r0, r3
	ldr	r1, [fp, #-8]
	ldr	r2, [fp, #-20]
.LEHB56:
	bl	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdj
	bl	__cxa_rethrow
.LEHE56:
.L277:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.personality	__gxx_personality_v0
	.handlerdata
	.align	2
.LLSDA6315:
	.byte	0xff
	.byte	0x90
	.uleb128 .LLSDATT6315-.LLSDATTD6315
.LLSDATTD6315:
	.byte	0x1
	.uleb128 .LLSDACSE6315-.LLSDACSB6315
.LLSDACSB6315:
	.uleb128 .LEHB53-.LFB6315
	.uleb128 .LEHE53-.LEHB53
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB54-.LFB6315
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L275-.LFB6315
	.uleb128 0x1
	.uleb128 .LEHB55-.LFB6315
	.uleb128 .LEHE55-.LEHB55
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB56-.LFB6315
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L276-.LFB6315
	.uleb128 0
.LLSDACSE6315:
	.byte	0x1
	.byte	0
	.align	2
	.word	0
.LLSDATT6315:
	.section	.text._ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdjT_S9_,"axG",%progbits,_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdjT_S9_,comdat
	.fnend
	.size	_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdjT_S9_, .-_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdjT_S9_
	.section	.text._ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdj,"axG",%progbits,_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdj,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdj
	.type	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdj, %function
_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdj:
	.fnstart
.LFB6316:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L278
	ldr	r3, [fp, #-8]
	mov	r0, r3
	ldr	r1, [fp, #-12]
	ldr	r2, [fp, #-16]
	bl	_ZN9__gnu_cxx14__alloc_traitsISaIdEE10deallocateERS1_Pdj
.L278:
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdj, .-_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdj
	.section	.text._ZNSt6vectorIdSaIdEE5beginEv,"axG",%progbits,_ZNSt6vectorIdSaIdEE5beginEv,comdat
	.align	2
	.weak	_ZNSt6vectorIdSaIdEE5beginEv
	.type	_ZNSt6vectorIdSaIdEE5beginEv, %function
_ZNSt6vectorIdSaIdEE5beginEv:
	.fnstart
.LFB6317:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	sub	r2, fp, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC1ERKS1_
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZNSt6vectorIdSaIdEE5beginEv, .-_ZNSt6vectorIdSaIdEE5beginEv
	.section	.text._ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_,"axG",%progbits,_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_,comdat
	.align	2
	.weak	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_
	.type	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_, %function
_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_:
	.fnstart
.LFB6318:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	.save {r4, fp, lr}
	.setfp fp, sp, #8
	add	fp, sp, #8
	.pad #20
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r0, [fp, #-16]
	bl	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEENSt11_Miter_baseIT_E13iterator_typeES9_
	mov	r4, r0
	ldr	r0, [fp, #-20]
	bl	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEENSt11_Miter_baseIT_E13iterator_typeES9_
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	ldr	r2, [fp, #-24]
	bl	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET1_T0_SB_SA_
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	ldmfd	sp!, {r4, fp, pc}
	.fnend
	.size	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_, .-_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_
	.section	.text._ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RSaIT0_E,"axG",%progbits,_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RSaIT0_E,comdat
	.align	2
	.weak	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RSaIT0_E
	.type	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RSaIT0_E, %function
_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RSaIT0_E:
	.fnstart
.LFB6319:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r0, [fp, #-8]
	ldr	r1, [fp, #-12]
	bl	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RSaIT0_E, .-_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RSaIT0_E
	.section	.text._ZSt4copyIPdS0_ET0_T_S2_S1_,"axG",%progbits,_ZSt4copyIPdS0_ET0_T_S2_S1_,comdat
	.align	2
	.weak	_ZSt4copyIPdS0_ET0_T_S2_S1_
	.type	_ZSt4copyIPdS0_ET0_T_S2_S1_, %function
_ZSt4copyIPdS0_ET0_T_S2_S1_:
	.fnstart
.LFB6320:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	.save {r4, fp, lr}
	.setfp fp, sp, #8
	add	fp, sp, #8
	.pad #20
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r0, [fp, #-16]
	bl	_ZSt12__miter_baseIPdENSt11_Miter_baseIT_E13iterator_typeES2_
	mov	r4, r0
	ldr	r0, [fp, #-20]
	bl	_ZSt12__miter_baseIPdENSt11_Miter_baseIT_E13iterator_typeES2_
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	ldr	r2, [fp, #-24]
	bl	_ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	ldmfd	sp!, {r4, fp, pc}
	.fnend
	.size	_ZSt4copyIPdS0_ET0_T_S2_S1_, .-_ZSt4copyIPdS0_ET0_T_S2_S1_
	.section	.text._ZSt22__uninitialized_copy_aIPdS0_dET0_T_S2_S1_RSaIT1_E,"axG",%progbits,_ZSt22__uninitialized_copy_aIPdS0_dET0_T_S2_S1_RSaIT1_E,comdat
	.align	2
	.weak	_ZSt22__uninitialized_copy_aIPdS0_dET0_T_S2_S1_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aIPdS0_dET0_T_S2_S1_RSaIT1_E, %function
_ZSt22__uninitialized_copy_aIPdS0_dET0_T_S2_S1_RSaIT1_E:
	.fnstart
.LFB6321:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	str	r3, [fp, #-20]
	ldr	r0, [fp, #-8]
	ldr	r1, [fp, #-12]
	ldr	r2, [fp, #-16]
	bl	_ZSt18uninitialized_copyIPdS0_ET0_T_S2_S1_
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZSt22__uninitialized_copy_aIPdS0_dET0_T_S2_S1_RSaIT1_E, .-_ZSt22__uninitialized_copy_aIPdS0_dET0_T_S2_S1_RSaIT1_E
	.section	.text._ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev,"axG",%progbits,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev, %function
_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev:
	.fnstart
.LFB6426:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r0, [fp, #-8]
	bl	_ZNSaIdEC2Ev
	ldr	r3, [fp, #-8]
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [fp, #-8]
	mov	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1Ev
_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1Ev = _ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev
	.section	.text._ZNSaIdED2Ev,"axG",%progbits,_ZNSaIdED5Ev,comdat
	.align	2
	.weak	_ZNSaIdED2Ev
	.type	_ZNSaIdED2Ev, %function
_ZNSaIdED2Ev:
	.fnstart
.LFB6429:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r0, [fp, #-8]
	bl	_ZN9__gnu_cxx13new_allocatorIdED2Ev
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZNSaIdED2Ev, .-_ZNSaIdED2Ev
	.weak	_ZNSaIdED1Ev
_ZNSaIdED1Ev = _ZNSaIdED2Ev
	.section	.text._ZSt8_DestroyIPdEvT_S1_,"axG",%progbits,_ZSt8_DestroyIPdEvT_S1_,comdat
	.align	2
	.weak	_ZSt8_DestroyIPdEvT_S1_
	.type	_ZSt8_DestroyIPdEvT_S1_, %function
_ZSt8_DestroyIPdEvT_S1_:
	.fnstart
.LFB6431:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	ldr	r1, [fp, #-12]
	bl	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZSt8_DestroyIPdEvT_S1_, .-_ZSt8_DestroyIPdEvT_S1_
	.section	.text._ZN7cvflann7anyimpl21typed_base_any_policyIiEC2Ev,"axG",%progbits,_ZN7cvflann7anyimpl21typed_base_any_policyIiEC5Ev,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl21typed_base_any_policyIiEC2Ev
	.type	_ZN7cvflann7anyimpl21typed_base_any_policyIiEC2Ev, %function
_ZN7cvflann7anyimpl21typed_base_any_policyIiEC2Ev:
	.fnstart
.LFB6471:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	_ZN7cvflann7anyimpl15base_any_policyC2Ev
	ldr	r3, [fp, #-8]
	ldr	r2, .L299
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L300:
	.align	2
.L299:
	.word	_ZTVN7cvflann7anyimpl21typed_base_any_policyIiEE+8
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl21typed_base_any_policyIiEC2Ev, .-_ZN7cvflann7anyimpl21typed_base_any_policyIiEC2Ev
	.weak	_ZN7cvflann7anyimpl21typed_base_any_policyIiEC1Ev
_ZN7cvflann7anyimpl21typed_base_any_policyIiEC1Ev = _ZN7cvflann7anyimpl21typed_base_any_policyIiEC2Ev
	.section	.text._ZN7cvflann7anyimpl16small_any_policyIiEC2Ev,"axG",%progbits,_ZN7cvflann7anyimpl16small_any_policyIiEC5Ev,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl16small_any_policyIiEC2Ev
	.type	_ZN7cvflann7anyimpl16small_any_policyIiEC2Ev, %function
_ZN7cvflann7anyimpl16small_any_policyIiEC2Ev:
	.fnstart
.LFB6473:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	_ZN7cvflann7anyimpl21typed_base_any_policyIiEC2Ev
	ldr	r3, [fp, #-8]
	ldr	r2, .L304
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L305:
	.align	2
.L304:
	.word	_ZTVN7cvflann7anyimpl16small_any_policyIiEE+8
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl16small_any_policyIiEC2Ev, .-_ZN7cvflann7anyimpl16small_any_policyIiEC2Ev
	.weak	_ZN7cvflann7anyimpl16small_any_policyIiEC1Ev
_ZN7cvflann7anyimpl16small_any_policyIiEC1Ev = _ZN7cvflann7anyimpl16small_any_policyIiEC2Ev
	.section	.text._ZN7cvflann7anyimpl21typed_base_any_policyIfEC2Ev,"axG",%progbits,_ZN7cvflann7anyimpl21typed_base_any_policyIfEC5Ev,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl21typed_base_any_policyIfEC2Ev
	.type	_ZN7cvflann7anyimpl21typed_base_any_policyIfEC2Ev, %function
_ZN7cvflann7anyimpl21typed_base_any_policyIfEC2Ev:
	.fnstart
.LFB6478:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	_ZN7cvflann7anyimpl15base_any_policyC2Ev
	ldr	r3, [fp, #-8]
	ldr	r2, .L309
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L310:
	.align	2
.L309:
	.word	_ZTVN7cvflann7anyimpl21typed_base_any_policyIfEE+8
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl21typed_base_any_policyIfEC2Ev, .-_ZN7cvflann7anyimpl21typed_base_any_policyIfEC2Ev
	.weak	_ZN7cvflann7anyimpl21typed_base_any_policyIfEC1Ev
_ZN7cvflann7anyimpl21typed_base_any_policyIfEC1Ev = _ZN7cvflann7anyimpl21typed_base_any_policyIfEC2Ev
	.section	.text._ZN7cvflann7anyimpl16small_any_policyIfEC2Ev,"axG",%progbits,_ZN7cvflann7anyimpl16small_any_policyIfEC5Ev,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl16small_any_policyIfEC2Ev
	.type	_ZN7cvflann7anyimpl16small_any_policyIfEC2Ev, %function
_ZN7cvflann7anyimpl16small_any_policyIfEC2Ev:
	.fnstart
.LFB6480:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	_ZN7cvflann7anyimpl21typed_base_any_policyIfEC2Ev
	ldr	r3, [fp, #-8]
	ldr	r2, .L314
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L315:
	.align	2
.L314:
	.word	_ZTVN7cvflann7anyimpl16small_any_policyIfEE+8
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl16small_any_policyIfEC2Ev, .-_ZN7cvflann7anyimpl16small_any_policyIfEC2Ev
	.weak	_ZN7cvflann7anyimpl16small_any_policyIfEC1Ev
_ZN7cvflann7anyimpl16small_any_policyIfEC1Ev = _ZN7cvflann7anyimpl16small_any_policyIfEC2Ev
	.section	.text._ZN7cvflann7anyimpl21typed_base_any_policyIbEC2Ev,"axG",%progbits,_ZN7cvflann7anyimpl21typed_base_any_policyIbEC5Ev,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl21typed_base_any_policyIbEC2Ev
	.type	_ZN7cvflann7anyimpl21typed_base_any_policyIbEC2Ev, %function
_ZN7cvflann7anyimpl21typed_base_any_policyIbEC2Ev:
	.fnstart
.LFB6485:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	_ZN7cvflann7anyimpl15base_any_policyC2Ev
	ldr	r3, [fp, #-8]
	ldr	r2, .L319
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L320:
	.align	2
.L319:
	.word	_ZTVN7cvflann7anyimpl21typed_base_any_policyIbEE+8
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl21typed_base_any_policyIbEC2Ev, .-_ZN7cvflann7anyimpl21typed_base_any_policyIbEC2Ev
	.weak	_ZN7cvflann7anyimpl21typed_base_any_policyIbEC1Ev
_ZN7cvflann7anyimpl21typed_base_any_policyIbEC1Ev = _ZN7cvflann7anyimpl21typed_base_any_policyIbEC2Ev
	.section	.text._ZN7cvflann7anyimpl16small_any_policyIbEC2Ev,"axG",%progbits,_ZN7cvflann7anyimpl16small_any_policyIbEC5Ev,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl16small_any_policyIbEC2Ev
	.type	_ZN7cvflann7anyimpl16small_any_policyIbEC2Ev, %function
_ZN7cvflann7anyimpl16small_any_policyIbEC2Ev:
	.fnstart
.LFB6487:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	_ZN7cvflann7anyimpl21typed_base_any_policyIbEC2Ev
	ldr	r3, [fp, #-8]
	ldr	r2, .L324
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L325:
	.align	2
.L324:
	.word	_ZTVN7cvflann7anyimpl16small_any_policyIbEE+8
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl16small_any_policyIbEC2Ev, .-_ZN7cvflann7anyimpl16small_any_policyIbEC2Ev
	.weak	_ZN7cvflann7anyimpl16small_any_policyIbEC1Ev
_ZN7cvflann7anyimpl16small_any_policyIbEC1Ev = _ZN7cvflann7anyimpl16small_any_policyIbEC2Ev
	.section	.text._ZN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEEC2Ev,"axG",%progbits,_ZN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEEC5Ev,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEEC2Ev
	.type	_ZN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEEC2Ev, %function
_ZN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEEC2Ev:
	.fnstart
.LFB6505:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	_ZN7cvflann7anyimpl15base_any_policyC2Ev
	ldr	r3, [fp, #-8]
	ldr	r2, .L329
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L330:
	.align	2
.L329:
	.word	_ZTVN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEEE+8
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEEC2Ev, .-_ZN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEEC2Ev
	.weak	_ZN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEEC1Ev
_ZN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEEC1Ev = _ZN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEEC2Ev
	.section	.text._ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEEC2Ev,"axG",%progbits,_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEEC5Ev,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEEC2Ev
	.type	_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEEC2Ev, %function
_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEEC2Ev:
	.fnstart
.LFB6507:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	_ZN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEEC2Ev
	ldr	r3, [fp, #-8]
	ldr	r2, .L334
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L335:
	.align	2
.L334:
	.word	_ZTVN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEEE+8
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEEC2Ev, .-_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEEC2Ev
	.weak	_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEEC1Ev
_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEEC1Ev = _ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEEC2Ev
	.section	.text._ZN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEEC2Ev,"axG",%progbits,_ZN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEEC5Ev,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEEC2Ev
	.type	_ZN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEEC2Ev, %function
_ZN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEEC2Ev:
	.fnstart
.LFB6512:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	_ZN7cvflann7anyimpl15base_any_policyC2Ev
	ldr	r3, [fp, #-8]
	ldr	r2, .L339
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L340:
	.align	2
.L339:
	.word	_ZTVN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEEE+8
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEEC2Ev, .-_ZN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEEC2Ev
	.weak	_ZN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEEC1Ev
_ZN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEEC1Ev = _ZN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEEC2Ev
	.section	.text._ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEEC2Ev,"axG",%progbits,_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEEC5Ev,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEEC2Ev
	.type	_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEEC2Ev, %function
_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEEC2Ev:
	.fnstart
.LFB6514:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	_ZN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEEC2Ev
	ldr	r3, [fp, #-8]
	ldr	r2, .L344
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L345:
	.align	2
.L344:
	.word	_ZTVN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEEE+8
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEEC2Ev, .-_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEEC2Ev
	.weak	_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEEC1Ev
_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEEC1Ev = _ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEEC2Ev
	.section	.text._ZN7cvflann7anyimpl21typed_base_any_policyIjEC2Ev,"axG",%progbits,_ZN7cvflann7anyimpl21typed_base_any_policyIjEC5Ev,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl21typed_base_any_policyIjEC2Ev
	.type	_ZN7cvflann7anyimpl21typed_base_any_policyIjEC2Ev, %function
_ZN7cvflann7anyimpl21typed_base_any_policyIjEC2Ev:
	.fnstart
.LFB6603:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	_ZN7cvflann7anyimpl15base_any_policyC2Ev
	ldr	r3, [fp, #-8]
	ldr	r2, .L349
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L350:
	.align	2
.L349:
	.word	_ZTVN7cvflann7anyimpl21typed_base_any_policyIjEE+8
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl21typed_base_any_policyIjEC2Ev, .-_ZN7cvflann7anyimpl21typed_base_any_policyIjEC2Ev
	.weak	_ZN7cvflann7anyimpl21typed_base_any_policyIjEC1Ev
_ZN7cvflann7anyimpl21typed_base_any_policyIjEC1Ev = _ZN7cvflann7anyimpl21typed_base_any_policyIjEC2Ev
	.section	.text._ZN7cvflann7anyimpl16small_any_policyIjEC2Ev,"axG",%progbits,_ZN7cvflann7anyimpl16small_any_policyIjEC5Ev,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl16small_any_policyIjEC2Ev
	.type	_ZN7cvflann7anyimpl16small_any_policyIjEC2Ev, %function
_ZN7cvflann7anyimpl16small_any_policyIjEC2Ev:
	.fnstart
.LFB6605:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	_ZN7cvflann7anyimpl21typed_base_any_policyIjEC2Ev
	ldr	r3, [fp, #-8]
	ldr	r2, .L354
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L355:
	.align	2
.L354:
	.word	_ZTVN7cvflann7anyimpl16small_any_policyIjEE+8
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl16small_any_policyIjEC2Ev, .-_ZN7cvflann7anyimpl16small_any_policyIjEC2Ev
	.weak	_ZN7cvflann7anyimpl16small_any_policyIjEC1Ev
_ZN7cvflann7anyimpl16small_any_policyIjEC1Ev = _ZN7cvflann7anyimpl16small_any_policyIjEC2Ev
	.section	.text._ZN7cvflann7anyimpl21typed_base_any_policyISsEC2Ev,"axG",%progbits,_ZN7cvflann7anyimpl21typed_base_any_policyISsEC5Ev,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl21typed_base_any_policyISsEC2Ev
	.type	_ZN7cvflann7anyimpl21typed_base_any_policyISsEC2Ev, %function
_ZN7cvflann7anyimpl21typed_base_any_policyISsEC2Ev:
	.fnstart
.LFB6610:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	_ZN7cvflann7anyimpl15base_any_policyC2Ev
	ldr	r3, [fp, #-8]
	ldr	r2, .L359
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L360:
	.align	2
.L359:
	.word	_ZTVN7cvflann7anyimpl21typed_base_any_policyISsEE+8
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl21typed_base_any_policyISsEC2Ev, .-_ZN7cvflann7anyimpl21typed_base_any_policyISsEC2Ev
	.weak	_ZN7cvflann7anyimpl21typed_base_any_policyISsEC1Ev
_ZN7cvflann7anyimpl21typed_base_any_policyISsEC1Ev = _ZN7cvflann7anyimpl21typed_base_any_policyISsEC2Ev
	.section	.text._ZN7cvflann7anyimpl14big_any_policyISsEC2Ev,"axG",%progbits,_ZN7cvflann7anyimpl14big_any_policyISsEC5Ev,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl14big_any_policyISsEC2Ev
	.type	_ZN7cvflann7anyimpl14big_any_policyISsEC2Ev, %function
_ZN7cvflann7anyimpl14big_any_policyISsEC2Ev:
	.fnstart
.LFB6612:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	_ZN7cvflann7anyimpl21typed_base_any_policyISsEC2Ev
	ldr	r3, [fp, #-8]
	ldr	r2, .L364
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L365:
	.align	2
.L364:
	.word	_ZTVN7cvflann7anyimpl14big_any_policyISsEE+8
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl14big_any_policyISsEC2Ev, .-_ZN7cvflann7anyimpl14big_any_policyISsEC2Ev
	.weak	_ZN7cvflann7anyimpl14big_any_policyISsEC1Ev
_ZN7cvflann7anyimpl14big_any_policyISsEC1Ev = _ZN7cvflann7anyimpl14big_any_policyISsEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIdE9constructEPdRKd,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorIdE9constructEPdRKd,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIdE9constructEPdRKd
	.type	_ZN9__gnu_cxx13new_allocatorIdE9constructEPdRKd, %function
_ZN9__gnu_cxx13new_allocatorIdE9constructEPdRKd:
	.fnstart
.LFB6639:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	mov	r0, #8
	mov	r1, r3
	bl	_ZnwjPv
	mov	r1, r0
	cmp	r1, #0
	beq	.L366
	ldr	r3, [fp, #-16]
	ldrd	r2, [r3]
	strd	r2, [r1]
.L366:
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZN9__gnu_cxx13new_allocatorIdE9constructEPdRKd, .-_ZN9__gnu_cxx13new_allocatorIdE9constructEPdRKd
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv,"axG",%progbits,_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv, %function
_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv:
	.fnstart
.LFB6640:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	.section	.text._ZSt13copy_backwardIPdS0_ET0_T_S2_S1_,"axG",%progbits,_ZSt13copy_backwardIPdS0_ET0_T_S2_S1_,comdat
	.align	2
	.weak	_ZSt13copy_backwardIPdS0_ET0_T_S2_S1_
	.type	_ZSt13copy_backwardIPdS0_ET0_T_S2_S1_, %function
_ZSt13copy_backwardIPdS0_ET0_T_S2_S1_:
	.fnstart
.LFB6641:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	.save {r4, fp, lr}
	.setfp fp, sp, #8
	add	fp, sp, #8
	.pad #20
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r0, [fp, #-16]
	bl	_ZSt12__miter_baseIPdENSt11_Miter_baseIT_E13iterator_typeES2_
	mov	r4, r0
	ldr	r0, [fp, #-20]
	bl	_ZSt12__miter_baseIPdENSt11_Miter_baseIT_E13iterator_typeES2_
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	ldr	r2, [fp, #-24]
	bl	_ZSt23__copy_move_backward_a2ILb0EPdS0_ET1_T0_S2_S1_
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	ldmfd	sp!, {r4, fp, pc}
	.fnend
	.size	_ZSt13copy_backwardIPdS0_ET0_T_S2_S1_, .-_ZSt13copy_backwardIPdS0_ET0_T_S2_S1_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv,"axG",%progbits,_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv, %function
_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv:
	.fnstart
.LFB6642:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	.section	.text._ZNKSt6vectorIdSaIdEE12_M_check_lenEjPKc,"axG",%progbits,_ZNKSt6vectorIdSaIdEE12_M_check_lenEjPKc,comdat
	.align	2
	.weak	_ZNKSt6vectorIdSaIdEE12_M_check_lenEjPKc
	.type	_ZNKSt6vectorIdSaIdEE12_M_check_lenEjPKc, %function
_ZNKSt6vectorIdSaIdEE12_M_check_lenEjPKc:
	.fnstart
.LFB6643:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	.save {r4, fp, lr}
	.setfp fp, sp, #8
	add	fp, sp, #8
	.pad #28
	sub	sp, sp, #28
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	ldr	r0, [fp, #-24]
	bl	_ZNKSt6vectorIdSaIdEE8max_sizeEv
	mov	r4, r0
	ldr	r0, [fp, #-24]
	bl	_ZNKSt6vectorIdSaIdEE4sizeEv
	mov	r3, r0
	rsb	r2, r3, r4
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	movcc	r3, #1
	movcs	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L376
	ldr	r0, [fp, #-32]
	bl	_ZSt20__throw_length_errorPKc
.L376:
	ldr	r0, [fp, #-24]
	bl	_ZNKSt6vectorIdSaIdEE4sizeEv
	mov	r4, r0
	ldr	r0, [fp, #-24]
	bl	_ZNKSt6vectorIdSaIdEE4sizeEv
	mov	r3, r0
	str	r3, [fp, #-20]
	sub	r2, fp, #20
	sub	r3, fp, #28
	mov	r0, r2
	mov	r1, r3
	bl	_ZSt3maxIjERKT_S2_S2_
	mov	r3, r0
	ldr	r3, [r3]
	add	r3, r4, r3
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	bl	_ZNKSt6vectorIdSaIdEE4sizeEv
	mov	r2, r0
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bhi	.L377
	ldr	r0, [fp, #-24]
	bl	_ZNKSt6vectorIdSaIdEE8max_sizeEv
	mov	r2, r0
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bcs	.L378
.L377:
	ldr	r0, [fp, #-24]
	bl	_ZNKSt6vectorIdSaIdEE8max_sizeEv
	mov	r3, r0
	b	.L380
.L378:
	ldr	r3, [fp, #-16]
.L380:
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	ldmfd	sp!, {r4, fp, pc}
	.fnend
	.size	_ZNKSt6vectorIdSaIdEE12_M_check_lenEjPKc, .-_ZNKSt6vectorIdSaIdEE12_M_check_lenEjPKc
	.section	.text._ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,"axG",%progbits,_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,comdat
	.align	2
	.weak	_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.type	_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, %function
_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_:
	.fnstart
.LFB6644:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #12
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	mov	r3, r0
	ldr	r3, [r3]
	mov	r4, r3
	ldr	r0, [fp, #-20]
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	mov	r3, r0
	ldr	r3, [r3]
	rsb	r3, r3, r4
	mov	r3, r3, asr #3
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	ldmfd	sp!, {r4, fp, pc}
	.cantunwind
	.fnend
	.size	_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, .-_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.section	.text._ZNSt12_Vector_baseIdSaIdEE11_M_allocateEj,"axG",%progbits,_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEj,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEj
	.type	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEj, %function
_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEj:
	.fnstart
.LFB6645:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L384
	ldr	r3, [fp, #-8]
	mov	r0, r3
	ldr	r1, [fp, #-12]
	bl	_ZN9__gnu_cxx14__alloc_traitsISaIdEE8allocateERS1_j
	mov	r3, r0
	b	.L385
.L384:
	mov	r3, #0
.L385:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEj, .-_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEj
	.section	.text._ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_,"axG",%progbits,_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_,comdat
	.align	2
	.weak	_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_
	.type	_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_, %function
_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_:
	.fnstart
.LFB6646:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	str	r3, [fp, #-20]
	ldr	r0, [fp, #-8]
	ldr	r1, [fp, #-12]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	bl	_ZSt22__uninitialized_copy_aIPdS0_dET0_T_S2_S1_RSaIT1_E
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_, .-_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_
	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaIdEE7destroyERS1_Pd,"axG",%progbits,_ZN9__gnu_cxx14__alloc_traitsISaIdEE7destroyERS1_Pd,comdat
	.align	2
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaIdEE7destroyERS1_Pd
	.type	_ZN9__gnu_cxx14__alloc_traitsISaIdEE7destroyERS1_Pd, %function
_ZN9__gnu_cxx14__alloc_traitsISaIdEE7destroyERS1_Pd:
	.fnstart
.LFB6647:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	ldr	r1, [fp, #-12]
	bl	_ZN9__gnu_cxx13new_allocatorIdE7destroyEPd
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZN9__gnu_cxx14__alloc_traitsISaIdEE7destroyERS1_Pd, .-_ZN9__gnu_cxx14__alloc_traitsISaIdEE7destroyERS1_Pd
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_,"axG",%progbits,_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC5ERKS1_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_, %function
_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_:
	.fnstart
.LFB6649:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-12]
	ldr	r2, [r3]
	ldr	r3, [fp, #-8]
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_, .-_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC1ERKS1_
_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC1ERKS1_ = _ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_,"axG",%progbits,_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC5ERKS2_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_, %function
_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_:
	.fnstart
.LFB6656:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-12]
	ldr	r2, [r3]
	ldr	r3, [fp, #-8]
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_, .-_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC1ERKS2_
_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC1ERKS2_ = _ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_
	.section	.text._ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_,"axG",%progbits,_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_,comdat
	.align	2
	.weak	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_
	.type	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_, %function
_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_:
	.fnstart
.LFB6658:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #24
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	mov	r3, #1
	strb	r3, [fp, #-5]
	ldr	r0, [fp, #-16]
	ldr	r1, [fp, #-20]
	ldr	r2, [fp, #-24]
	bl	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_, .-_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_
	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaIdEE10deallocateERS1_Pdj,"axG",%progbits,_ZN9__gnu_cxx14__alloc_traitsISaIdEE10deallocateERS1_Pdj,comdat
	.align	2
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaIdEE10deallocateERS1_Pdj
	.type	_ZN9__gnu_cxx14__alloc_traitsISaIdEE10deallocateERS1_Pdj, %function
_ZN9__gnu_cxx14__alloc_traitsISaIdEE10deallocateERS1_Pdj:
	.fnstart
.LFB6659:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r0, [fp, #-8]
	ldr	r1, [fp, #-12]
	ldr	r2, [fp, #-16]
	bl	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdj
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZN9__gnu_cxx14__alloc_traitsISaIdEE10deallocateERS1_Pdj, .-_ZN9__gnu_cxx14__alloc_traitsISaIdEE10deallocateERS1_Pdj
	.section	.text._ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEENSt11_Miter_baseIT_E13iterator_typeES9_,"axG",%progbits,_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEENSt11_Miter_baseIT_E13iterator_typeES9_,comdat
	.align	2
	.weak	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEENSt11_Miter_baseIT_E13iterator_typeES9_
	.type	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEENSt11_Miter_baseIT_E13iterator_typeES9_, %function
_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEENSt11_Miter_baseIT_E13iterator_typeES9_:
	.fnstart
.LFB6660:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r0, [fp, #-8]
	bl	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEELb0EE7_S_baseES7_
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEENSt11_Miter_baseIT_E13iterator_typeES9_, .-_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEENSt11_Miter_baseIT_E13iterator_typeES9_
	.section	.text._ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET1_T0_SB_SA_,"axG",%progbits,_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET1_T0_SB_SA_,comdat
	.align	2
	.weak	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET1_T0_SB_SA_
	.type	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET1_T0_SB_SA_, %function
_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET1_T0_SB_SA_:
	.fnstart
.LFB6661:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, fp, lr}
	.save {r4, r5, fp, lr}
	.setfp fp, sp, #12
	add	fp, sp, #12
	.pad #24
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	ldr	r0, [fp, #-24]
	bl	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEENSt11_Niter_baseIT_E13iterator_typeES9_
	mov	r5, r0
	ldr	r0, [fp, #-28]
	bl	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEENSt11_Niter_baseIT_E13iterator_typeES9_
	mov	r4, r0
	ldr	r0, [fp, #-32]
	bl	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEENSt11_Niter_baseIT_E13iterator_typeES8_
	mov	r3, r0
	mov	r0, r5
	mov	r1, r4
	mov	r2, r3
	bl	_ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_
	mov	r3, r0
	str	r3, [fp, #-16]
	sub	r2, fp, #20
	sub	r3, fp, #16
	mov	r0, r2
	mov	r1, r3
	bl	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC1ERKS1_
	ldr	r3, [fp, #-20]
	mov	r0, r3
	sub	sp, fp, #12
	@ sp needed
	ldmfd	sp!, {r4, r5, fp, pc}
	.fnend
	.size	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET1_T0_SB_SA_, .-_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET1_T0_SB_SA_
	.section	.text._ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_,"axG",%progbits,_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_,comdat
	.align	2
	.weak	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_
	.type	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_, %function
_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_:
	.fnstart
.LFB6662:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	ldr	r1, [fp, #-12]
	bl	_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_, .-_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_
	.section	.text._ZSt12__miter_baseIPdENSt11_Miter_baseIT_E13iterator_typeES2_,"axG",%progbits,_ZSt12__miter_baseIPdENSt11_Miter_baseIT_E13iterator_typeES2_,comdat
	.align	2
	.weak	_ZSt12__miter_baseIPdENSt11_Miter_baseIT_E13iterator_typeES2_
	.type	_ZSt12__miter_baseIPdENSt11_Miter_baseIT_E13iterator_typeES2_, %function
_ZSt12__miter_baseIPdENSt11_Miter_baseIT_E13iterator_typeES2_:
	.fnstart
.LFB6663:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r0, [fp, #-8]
	bl	_ZNSt10_Iter_baseIPdLb0EE7_S_baseES0_
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZSt12__miter_baseIPdENSt11_Miter_baseIT_E13iterator_typeES2_, .-_ZSt12__miter_baseIPdENSt11_Miter_baseIT_E13iterator_typeES2_
	.section	.text._ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_,"axG",%progbits,_ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_,comdat
	.align	2
	.weak	_ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_
	.type	_ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_, %function
_ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_:
	.fnstart
.LFB6664:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, fp, lr}
	.save {r4, r5, fp, lr}
	.setfp fp, sp, #12
	add	fp, sp, #12
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r0, [fp, #-16]
	bl	_ZSt12__niter_baseIPdENSt11_Niter_baseIT_E13iterator_typeES2_
	mov	r5, r0
	ldr	r0, [fp, #-20]
	bl	_ZSt12__niter_baseIPdENSt11_Niter_baseIT_E13iterator_typeES2_
	mov	r4, r0
	ldr	r0, [fp, #-24]
	bl	_ZSt12__niter_baseIPdENSt11_Niter_baseIT_E13iterator_typeES2_
	mov	r3, r0
	mov	r0, r5
	mov	r1, r4
	mov	r2, r3
	bl	_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #12
	@ sp needed
	ldmfd	sp!, {r4, r5, fp, pc}
	.fnend
	.size	_ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_, .-_ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_
	.section	.text._ZSt18uninitialized_copyIPdS0_ET0_T_S2_S1_,"axG",%progbits,_ZSt18uninitialized_copyIPdS0_ET0_T_S2_S1_,comdat
	.align	2
	.weak	_ZSt18uninitialized_copyIPdS0_ET0_T_S2_S1_
	.type	_ZSt18uninitialized_copyIPdS0_ET0_T_S2_S1_, %function
_ZSt18uninitialized_copyIPdS0_ET0_T_S2_S1_:
	.fnstart
.LFB6665:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #24
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	mov	r3, #1
	strb	r3, [fp, #-5]
	ldr	r0, [fp, #-16]
	ldr	r1, [fp, #-20]
	ldr	r2, [fp, #-24]
	bl	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPdS2_EET0_T_S4_S3_
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZSt18uninitialized_copyIPdS0_ET0_T_S2_S1_, .-_ZSt18uninitialized_copyIPdS0_ET0_T_S2_S1_
	.section	.text._ZNSaIdEC2Ev,"axG",%progbits,_ZNSaIdEC5Ev,comdat
	.align	2
	.weak	_ZNSaIdEC2Ev
	.type	_ZNSaIdEC2Ev, %function
_ZNSaIdEC2Ev:
	.fnstart
.LFB6740:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r0, [fp, #-8]
	bl	_ZN9__gnu_cxx13new_allocatorIdEC2Ev
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZNSaIdEC2Ev, .-_ZNSaIdEC2Ev
	.weak	_ZNSaIdEC1Ev
_ZNSaIdEC1Ev = _ZNSaIdEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIdED2Ev,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorIdED5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIdED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIdED2Ev, %function
_ZN9__gnu_cxx13new_allocatorIdED2Ev:
	.fnstart
.LFB6743:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN9__gnu_cxx13new_allocatorIdED2Ev, .-_ZN9__gnu_cxx13new_allocatorIdED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIdED1Ev
_ZN9__gnu_cxx13new_allocatorIdED1Ev = _ZN9__gnu_cxx13new_allocatorIdED2Ev
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_,"axG",%progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_,comdat
	.align	2
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_, %function
_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_:
	.fnstart
.LFB6745:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_
	.section	.text._ZSt3maxIjERKT_S2_S2_,"axG",%progbits,_ZSt3maxIjERKT_S2_S2_,comdat
	.align	2
	.weak	_ZSt3maxIjERKT_S2_S2_
	.type	_ZSt3maxIjERKT_S2_S2_, %function
_ZSt3maxIjERKT_S2_S2_:
	.fnstart
.LFB6861:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	cmp	r2, r3
	bcs	.L418
	ldr	r3, [fp, #-12]
	b	.L419
.L418:
	ldr	r3, [fp, #-8]
.L419:
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZSt3maxIjERKT_S2_S2_, .-_ZSt3maxIjERKT_S2_S2_
	.section	.text._ZSt23__copy_move_backward_a2ILb0EPdS0_ET1_T0_S2_S1_,"axG",%progbits,_ZSt23__copy_move_backward_a2ILb0EPdS0_ET1_T0_S2_S1_,comdat
	.align	2
	.weak	_ZSt23__copy_move_backward_a2ILb0EPdS0_ET1_T0_S2_S1_
	.type	_ZSt23__copy_move_backward_a2ILb0EPdS0_ET1_T0_S2_S1_, %function
_ZSt23__copy_move_backward_a2ILb0EPdS0_ET1_T0_S2_S1_:
	.fnstart
.LFB6893:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, fp, lr}
	.save {r4, r5, fp, lr}
	.setfp fp, sp, #12
	add	fp, sp, #12
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r0, [fp, #-16]
	bl	_ZSt12__niter_baseIPdENSt11_Niter_baseIT_E13iterator_typeES2_
	mov	r5, r0
	ldr	r0, [fp, #-20]
	bl	_ZSt12__niter_baseIPdENSt11_Niter_baseIT_E13iterator_typeES2_
	mov	r4, r0
	ldr	r0, [fp, #-24]
	bl	_ZSt12__niter_baseIPdENSt11_Niter_baseIT_E13iterator_typeES2_
	mov	r3, r0
	mov	r0, r5
	mov	r1, r4
	mov	r2, r3
	bl	_ZSt22__copy_move_backward_aILb0EPdS0_ET1_T0_S2_S1_
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #12
	@ sp needed
	ldmfd	sp!, {r4, r5, fp, pc}
	.fnend
	.size	_ZSt23__copy_move_backward_a2ILb0EPdS0_ET1_T0_S2_S1_, .-_ZSt23__copy_move_backward_a2ILb0EPdS0_ET1_T0_S2_S1_
	.section	.text._ZNKSt6vectorIdSaIdEE8max_sizeEv,"axG",%progbits,_ZNKSt6vectorIdSaIdEE8max_sizeEv,comdat
	.align	2
	.weak	_ZNKSt6vectorIdSaIdEE8max_sizeEv
	.type	_ZNKSt6vectorIdSaIdEE8max_sizeEv, %function
_ZNKSt6vectorIdSaIdEE8max_sizeEv:
	.fnstart
.LFB6894:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	mov	r3, r0
	mov	r0, r3
	bl	_ZN9__gnu_cxx14__alloc_traitsISaIdEE8max_sizeERKS1_
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZNKSt6vectorIdSaIdEE8max_sizeEv, .-_ZNKSt6vectorIdSaIdEE8max_sizeEv
	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaIdEE8allocateERS1_j,"axG",%progbits,_ZN9__gnu_cxx14__alloc_traitsISaIdEE8allocateERS1_j,comdat
	.align	2
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaIdEE8allocateERS1_j
	.type	_ZN9__gnu_cxx14__alloc_traitsISaIdEE8allocateERS1_j, %function
_ZN9__gnu_cxx14__alloc_traitsISaIdEE8allocateERS1_j:
	.fnstart
.LFB6895:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	ldr	r1, [fp, #-12]
	mov	r2, #0
	bl	_ZN9__gnu_cxx13new_allocatorIdE8allocateEjPKv
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZN9__gnu_cxx14__alloc_traitsISaIdEE8allocateERS1_j, .-_ZN9__gnu_cxx14__alloc_traitsISaIdEE8allocateERS1_j
	.section	.text._ZN9__gnu_cxx13new_allocatorIdE7destroyEPd,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorIdE7destroyEPd,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIdE7destroyEPd
	.type	_ZN9__gnu_cxx13new_allocatorIdE7destroyEPd, %function
_ZN9__gnu_cxx13new_allocatorIdE7destroyEPd:
	.fnstart
.LFB6896:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN9__gnu_cxx13new_allocatorIdE7destroyEPd, .-_ZN9__gnu_cxx13new_allocatorIdE7destroyEPd
	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_,"axG",%progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_,comdat
	.align	2
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_, %function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_:
	.fnstart
.LFB6900:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r0, [fp, #-8]
	ldr	r1, [fp, #-12]
	ldr	r2, [fp, #-16]
	bl	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_, .-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_
	.section	.text._ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdj,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdj,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdj
	.type	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdj, %function
_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdj:
	.fnstart
.LFB6901:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r0, [fp, #-12]
	bl	_ZdlPv
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdj, .-_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdj
	.section	.text._ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEELb0EE7_S_baseES7_,"axG",%progbits,_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEELb0EE7_S_baseES7_,comdat
	.align	2
	.weak	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEELb0EE7_S_baseES7_
	.type	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEELb0EE7_S_baseES7_, %function
_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEELb0EE7_S_baseES7_:
	.fnstart
.LFB6902:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEELb0EE7_S_baseES7_, .-_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEELb0EE7_S_baseES7_
	.section	.text._ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEENSt11_Niter_baseIT_E13iterator_typeES9_,"axG",%progbits,_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEENSt11_Niter_baseIT_E13iterator_typeES9_,comdat
	.align	2
	.weak	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEENSt11_Niter_baseIT_E13iterator_typeES9_
	.type	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEENSt11_Niter_baseIT_E13iterator_typeES9_, %function
_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEENSt11_Niter_baseIT_E13iterator_typeES9_:
	.fnstart
.LFB6903:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r0, [fp, #-8]
	bl	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEELb1EE7_S_baseES7_
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEENSt11_Niter_baseIT_E13iterator_typeES9_, .-_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEENSt11_Niter_baseIT_E13iterator_typeES9_
	.section	.text._ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEENSt11_Niter_baseIT_E13iterator_typeES8_,"axG",%progbits,_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEENSt11_Niter_baseIT_E13iterator_typeES8_,comdat
	.align	2
	.weak	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEENSt11_Niter_baseIT_E13iterator_typeES8_
	.type	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEENSt11_Niter_baseIT_E13iterator_typeES8_, %function
_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEENSt11_Niter_baseIT_E13iterator_typeES8_:
	.fnstart
.LFB6904:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r0, [fp, #-8]
	bl	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEELb1EE7_S_baseES6_
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEENSt11_Niter_baseIT_E13iterator_typeES8_, .-_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEENSt11_Niter_baseIT_E13iterator_typeES8_
	.section	.text._ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_,"axG",%progbits,_ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_,comdat
	.align	2
	.weak	_ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_
	.type	_ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_, %function
_ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_:
	.fnstart
.LFB6905:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	mov	r3, #1
	strb	r3, [fp, #-5]
	ldr	r0, [fp, #-16]
	ldr	r1, [fp, #-20]
	ldr	r2, [fp, #-24]
	bl	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_, .-_ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_,"axG",%progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_,comdat
	.align	2
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_, %function
_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_:
	.fnstart
.LFB6906:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_
	.section	.text._ZNSt10_Iter_baseIPdLb0EE7_S_baseES0_,"axG",%progbits,_ZNSt10_Iter_baseIPdLb0EE7_S_baseES0_,comdat
	.align	2
	.weak	_ZNSt10_Iter_baseIPdLb0EE7_S_baseES0_
	.type	_ZNSt10_Iter_baseIPdLb0EE7_S_baseES0_, %function
_ZNSt10_Iter_baseIPdLb0EE7_S_baseES0_:
	.fnstart
.LFB6907:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNSt10_Iter_baseIPdLb0EE7_S_baseES0_, .-_ZNSt10_Iter_baseIPdLb0EE7_S_baseES0_
	.section	.text._ZSt12__niter_baseIPdENSt11_Niter_baseIT_E13iterator_typeES2_,"axG",%progbits,_ZSt12__niter_baseIPdENSt11_Niter_baseIT_E13iterator_typeES2_,comdat
	.align	2
	.weak	_ZSt12__niter_baseIPdENSt11_Niter_baseIT_E13iterator_typeES2_
	.type	_ZSt12__niter_baseIPdENSt11_Niter_baseIT_E13iterator_typeES2_, %function
_ZSt12__niter_baseIPdENSt11_Niter_baseIT_E13iterator_typeES2_:
	.fnstart
.LFB6908:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r0, [fp, #-8]
	bl	_ZNSt10_Iter_baseIPdLb0EE7_S_baseES0_
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZSt12__niter_baseIPdENSt11_Niter_baseIT_E13iterator_typeES2_, .-_ZSt12__niter_baseIPdENSt11_Niter_baseIT_E13iterator_typeES2_
	.section	.text._ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_,"axG",%progbits,_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_,comdat
	.align	2
	.weak	_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_
	.type	_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_, %function
_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_:
	.fnstart
.LFB6909:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	mov	r3, #1
	strb	r3, [fp, #-5]
	ldr	r0, [fp, #-16]
	ldr	r1, [fp, #-20]
	ldr	r2, [fp, #-24]
	bl	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_, .-_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_
	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPdS2_EET0_T_S4_S3_,"axG",%progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPdS2_EET0_T_S4_S3_,comdat
	.align	2
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPdS2_EET0_T_S4_S3_
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPdS2_EET0_T_S4_S3_, %function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPdS2_EET0_T_S4_S3_:
	.fnstart
.LFB6910:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r0, [fp, #-8]
	ldr	r1, [fp, #-12]
	ldr	r2, [fp, #-16]
	bl	_ZSt4copyIPdS0_ET0_T_S2_S1_
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPdS2_EET0_T_S4_S3_, .-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPdS2_EET0_T_S4_S3_
	.section	.text._ZN9__gnu_cxx13new_allocatorIdEC2Ev,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorIdEC5Ev,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIdEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIdEC2Ev, %function
_ZN9__gnu_cxx13new_allocatorIdEC2Ev:
	.fnstart
.LFB6954:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN9__gnu_cxx13new_allocatorIdEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIdEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIdEC1Ev
_ZN9__gnu_cxx13new_allocatorIdEC1Ev = _ZN9__gnu_cxx13new_allocatorIdEC2Ev
	.section	.text._ZSt22__copy_move_backward_aILb0EPdS0_ET1_T0_S2_S1_,"axG",%progbits,_ZSt22__copy_move_backward_aILb0EPdS0_ET1_T0_S2_S1_,comdat
	.align	2
	.weak	_ZSt22__copy_move_backward_aILb0EPdS0_ET1_T0_S2_S1_
	.type	_ZSt22__copy_move_backward_aILb0EPdS0_ET1_T0_S2_S1_, %function
_ZSt22__copy_move_backward_aILb0EPdS0_ET1_T0_S2_S1_:
	.fnstart
.LFB7078:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	mov	r3, #1
	strb	r3, [fp, #-5]
	ldr	r0, [fp, #-16]
	ldr	r1, [fp, #-20]
	ldr	r2, [fp, #-24]
	bl	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIdEEPT_PKS3_S6_S4_
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZSt22__copy_move_backward_aILb0EPdS0_ET1_T0_S2_S1_, .-_ZSt22__copy_move_backward_aILb0EPdS0_ET1_T0_S2_S1_
	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaIdEE8max_sizeERKS1_,"axG",%progbits,_ZN9__gnu_cxx14__alloc_traitsISaIdEE8max_sizeERKS1_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaIdEE8max_sizeERKS1_
	.type	_ZN9__gnu_cxx14__alloc_traitsISaIdEE8max_sizeERKS1_, %function
_ZN9__gnu_cxx14__alloc_traitsISaIdEE8max_sizeERKS1_:
	.fnstart
.LFB7079:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r0, [fp, #-8]
	bl	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZN9__gnu_cxx14__alloc_traitsISaIdEE8max_sizeERKS1_, .-_ZN9__gnu_cxx14__alloc_traitsISaIdEE8max_sizeERKS1_
	.section	.text._ZN9__gnu_cxx13new_allocatorIdE8allocateEjPKv,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorIdE8allocateEjPKv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx13new_allocatorIdE8allocateEjPKv
	.type	_ZN9__gnu_cxx13new_allocatorIdE8allocateEjPKv, %function
_ZN9__gnu_cxx13new_allocatorIdE8allocateEjPKv:
	.fnstart
.LFB7080:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r0, [fp, #-8]
	bl	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv
	mov	r2, r0
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	movcc	r3, #1
	movcs	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L455
	bl	_ZSt17__throw_bad_allocv
.L455:
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #3
	mov	r0, r3
	bl	_Znwj
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZN9__gnu_cxx13new_allocatorIdE8allocateEjPKv, .-_ZN9__gnu_cxx13new_allocatorIdE8allocateEjPKv
	.section	.text._ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_,"axG",%progbits,_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_,comdat
	.align	2
	.weak	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_
	.type	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_, %function
_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_:
	.fnstart
.LFB7084:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	.save {r4, fp, lr}
	.setfp fp, sp, #8
	add	fp, sp, #8
	.pad #20
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r0, [fp, #-16]
	bl	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEENSt11_Miter_baseIT_E13iterator_typeES9_
	mov	r4, r0
	ldr	r0, [fp, #-20]
	bl	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEENSt11_Miter_baseIT_E13iterator_typeES9_
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	ldr	r2, [fp, #-24]
	bl	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	ldmfd	sp!, {r4, fp, pc}
	.fnend
	.size	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_, .-_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_
	.section	.text._ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEELb1EE7_S_baseES7_,"axG",%progbits,_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEELb1EE7_S_baseES7_,comdat
	.align	2
	.weak	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEELb1EE7_S_baseES7_
	.type	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEELb1EE7_S_baseES7_, %function
_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEELb1EE7_S_baseES7_:
	.fnstart
.LFB7085:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	sub	r3, fp, #8
	mov	r0, r3
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv
	mov	r3, r0
	ldr	r3, [r3]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEELb1EE7_S_baseES7_, .-_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEELb1EE7_S_baseES7_
	.section	.text._ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEELb1EE7_S_baseES6_,"axG",%progbits,_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEELb1EE7_S_baseES6_,comdat
	.align	2
	.weak	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEELb1EE7_S_baseES6_
	.type	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEELb1EE7_S_baseES6_, %function
_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEELb1EE7_S_baseES6_:
	.fnstart
.LFB7086:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	sub	r3, fp, #8
	mov	r0, r3
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	mov	r3, r0
	ldr	r3, [r3]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEELb1EE7_S_baseES6_, .-_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEELb1EE7_S_baseES6_
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_,"axG",%progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_,comdat
	.align	2
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_, %function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_:
	.fnstart
.LFB7087:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-16]
	rsb	r3, r3, r2
	mov	r3, r3, asr #3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L464
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #3
	ldr	r0, [fp, #-24]
	ldr	r1, [fp, #-16]
	mov	r2, r3
	bl	memmove
.L464:
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_
	.section	.text._ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIdEEPT_PKS3_S6_S4_,"axG",%progbits,_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIdEEPT_PKS3_S6_S4_,comdat
	.align	2
	.weak	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIdEEPT_PKS3_S6_S4_
	.type	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIdEEPT_PKS3_S6_S4_, %function
_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIdEEPT_PKS3_S6_S4_:
	.fnstart
.LFB7144:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-16]
	rsb	r3, r3, r2
	mov	r3, r3, asr #3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L467
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #3
	rsb	r3, r3, #0
	ldr	r2, [fp, #-24]
	add	r2, r2, r3
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #3
	mov	r0, r2
	ldr	r1, [fp, #-16]
	mov	r2, r3
	bl	memmove
.L467:
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #3
	rsb	r3, r3, #0
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIdEEPT_PKS3_S6_S4_, .-_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIdEEPT_PKS3_S6_S4_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv,"axG",%progbits,_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv, %function
_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv:
	.fnstart
.LFB7145:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	mvn	r3, #-536870912
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv
	.section	.text._ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_,"axG",%progbits,_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_,comdat
	.align	2
	.weak	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_
	.type	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_, %function
_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_:
	.fnstart
.LFB7146:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, fp, lr}
	.save {r4, r5, fp, lr}
	.setfp fp, sp, #12
	add	fp, sp, #12
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r0, [fp, #-16]
	bl	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEENSt11_Niter_baseIT_E13iterator_typeES9_
	mov	r5, r0
	ldr	r0, [fp, #-20]
	bl	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEENSt11_Niter_baseIT_E13iterator_typeES9_
	mov	r4, r0
	ldr	r0, [fp, #-24]
	bl	_ZSt12__niter_baseIPdENSt11_Niter_baseIT_E13iterator_typeES2_
	mov	r3, r0
	mov	r0, r5
	mov	r1, r4
	mov	r2, r3
	bl	_ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #12
	@ sp needed
	ldmfd	sp!, {r4, r5, fp, pc}
	.fnend
	.size	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_, .-_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv,"axG",%progbits,_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv, %function
_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv:
	.fnstart
.LFB7147:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv
	.weak	_ZTVN7cvflann7anyimpl14big_any_policyISsEE
	.section	.rodata._ZTVN7cvflann7anyimpl14big_any_policyISsEE,"aG",%progbits,_ZTVN7cvflann7anyimpl14big_any_policyISsEE,comdat
	.align	3
	.type	_ZTVN7cvflann7anyimpl14big_any_policyISsEE, %object
	.size	_ZTVN7cvflann7anyimpl14big_any_policyISsEE, 40
_ZTVN7cvflann7anyimpl14big_any_policyISsEE:
	.word	0
	.word	_ZTIN7cvflann7anyimpl14big_any_policyISsEE
	.word	_ZN7cvflann7anyimpl14big_any_policyISsE13static_deleteEPPv
	.word	_ZN7cvflann7anyimpl14big_any_policyISsE15copy_from_valueEPKvPPv
	.word	_ZN7cvflann7anyimpl14big_any_policyISsE5cloneEPKPvPS3_
	.word	_ZN7cvflann7anyimpl14big_any_policyISsE4moveEPKPvPS3_
	.word	_ZN7cvflann7anyimpl14big_any_policyISsE9get_valueEPPv
	.word	_ZN7cvflann7anyimpl21typed_base_any_policyISsE8get_sizeEv
	.word	_ZN7cvflann7anyimpl21typed_base_any_policyISsE4typeEv
	.word	_ZN7cvflann7anyimpl14big_any_policyISsE5printERSoPKPv
	.weak	_ZTVN7cvflann7anyimpl21typed_base_any_policyISsEE
	.section	.rodata._ZTVN7cvflann7anyimpl21typed_base_any_policyISsEE,"aG",%progbits,_ZTVN7cvflann7anyimpl21typed_base_any_policyISsEE,comdat
	.align	3
	.type	_ZTVN7cvflann7anyimpl21typed_base_any_policyISsEE, %object
	.size	_ZTVN7cvflann7anyimpl21typed_base_any_policyISsEE, 40
_ZTVN7cvflann7anyimpl21typed_base_any_policyISsEE:
	.word	0
	.word	_ZTIN7cvflann7anyimpl21typed_base_any_policyISsEE
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	_ZN7cvflann7anyimpl21typed_base_any_policyISsE8get_sizeEv
	.word	_ZN7cvflann7anyimpl21typed_base_any_policyISsE4typeEv
	.word	__cxa_pure_virtual
	.weak	_ZTVN7cvflann7anyimpl16small_any_policyIjEE
	.section	.rodata._ZTVN7cvflann7anyimpl16small_any_policyIjEE,"aG",%progbits,_ZTVN7cvflann7anyimpl16small_any_policyIjEE,comdat
	.align	3
	.type	_ZTVN7cvflann7anyimpl16small_any_policyIjEE, %object
	.size	_ZTVN7cvflann7anyimpl16small_any_policyIjEE, 40
_ZTVN7cvflann7anyimpl16small_any_policyIjEE:
	.word	0
	.word	_ZTIN7cvflann7anyimpl16small_any_policyIjEE
	.word	_ZN7cvflann7anyimpl16small_any_policyIjE13static_deleteEPPv
	.word	_ZN7cvflann7anyimpl16small_any_policyIjE15copy_from_valueEPKvPPv
	.word	_ZN7cvflann7anyimpl16small_any_policyIjE5cloneEPKPvPS3_
	.word	_ZN7cvflann7anyimpl16small_any_policyIjE4moveEPKPvPS3_
	.word	_ZN7cvflann7anyimpl16small_any_policyIjE9get_valueEPPv
	.word	_ZN7cvflann7anyimpl21typed_base_any_policyIjE8get_sizeEv
	.word	_ZN7cvflann7anyimpl21typed_base_any_policyIjE4typeEv
	.word	_ZN7cvflann7anyimpl16small_any_policyIjE5printERSoPKPv
	.weak	_ZTVN7cvflann7anyimpl21typed_base_any_policyIjEE
	.section	.rodata._ZTVN7cvflann7anyimpl21typed_base_any_policyIjEE,"aG",%progbits,_ZTVN7cvflann7anyimpl21typed_base_any_policyIjEE,comdat
	.align	3
	.type	_ZTVN7cvflann7anyimpl21typed_base_any_policyIjEE, %object
	.size	_ZTVN7cvflann7anyimpl21typed_base_any_policyIjEE, 40
_ZTVN7cvflann7anyimpl21typed_base_any_policyIjEE:
	.word	0
	.word	_ZTIN7cvflann7anyimpl21typed_base_any_policyIjEE
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	_ZN7cvflann7anyimpl21typed_base_any_policyIjE8get_sizeEv
	.word	_ZN7cvflann7anyimpl21typed_base_any_policyIjE4typeEv
	.word	__cxa_pure_virtual
	.weak	_ZTVN7cvflann7anyimpl16small_any_policyIbEE
	.section	.rodata._ZTVN7cvflann7anyimpl16small_any_policyIbEE,"aG",%progbits,_ZTVN7cvflann7anyimpl16small_any_policyIbEE,comdat
	.align	3
	.type	_ZTVN7cvflann7anyimpl16small_any_policyIbEE, %object
	.size	_ZTVN7cvflann7anyimpl16small_any_policyIbEE, 40
_ZTVN7cvflann7anyimpl16small_any_policyIbEE:
	.word	0
	.word	_ZTIN7cvflann7anyimpl16small_any_policyIbEE
	.word	_ZN7cvflann7anyimpl16small_any_policyIbE13static_deleteEPPv
	.word	_ZN7cvflann7anyimpl16small_any_policyIbE15copy_from_valueEPKvPPv
	.word	_ZN7cvflann7anyimpl16small_any_policyIbE5cloneEPKPvPS3_
	.word	_ZN7cvflann7anyimpl16small_any_policyIbE4moveEPKPvPS3_
	.word	_ZN7cvflann7anyimpl16small_any_policyIbE9get_valueEPPv
	.word	_ZN7cvflann7anyimpl21typed_base_any_policyIbE8get_sizeEv
	.word	_ZN7cvflann7anyimpl21typed_base_any_policyIbE4typeEv
	.word	_ZN7cvflann7anyimpl16small_any_policyIbE5printERSoPKPv
	.weak	_ZTVN7cvflann7anyimpl21typed_base_any_policyIbEE
	.section	.rodata._ZTVN7cvflann7anyimpl21typed_base_any_policyIbEE,"aG",%progbits,_ZTVN7cvflann7anyimpl21typed_base_any_policyIbEE,comdat
	.align	3
	.type	_ZTVN7cvflann7anyimpl21typed_base_any_policyIbEE, %object
	.size	_ZTVN7cvflann7anyimpl21typed_base_any_policyIbEE, 40
_ZTVN7cvflann7anyimpl21typed_base_any_policyIbEE:
	.word	0
	.word	_ZTIN7cvflann7anyimpl21typed_base_any_policyIbEE
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	_ZN7cvflann7anyimpl21typed_base_any_policyIbE8get_sizeEv
	.word	_ZN7cvflann7anyimpl21typed_base_any_policyIbE4typeEv
	.word	__cxa_pure_virtual
	.weak	_ZTVN7cvflann7anyimpl16small_any_policyIfEE
	.section	.rodata._ZTVN7cvflann7anyimpl16small_any_policyIfEE,"aG",%progbits,_ZTVN7cvflann7anyimpl16small_any_policyIfEE,comdat
	.align	3
	.type	_ZTVN7cvflann7anyimpl16small_any_policyIfEE, %object
	.size	_ZTVN7cvflann7anyimpl16small_any_policyIfEE, 40
_ZTVN7cvflann7anyimpl16small_any_policyIfEE:
	.word	0
	.word	_ZTIN7cvflann7anyimpl16small_any_policyIfEE
	.word	_ZN7cvflann7anyimpl16small_any_policyIfE13static_deleteEPPv
	.word	_ZN7cvflann7anyimpl16small_any_policyIfE15copy_from_valueEPKvPPv
	.word	_ZN7cvflann7anyimpl16small_any_policyIfE5cloneEPKPvPS3_
	.word	_ZN7cvflann7anyimpl16small_any_policyIfE4moveEPKPvPS3_
	.word	_ZN7cvflann7anyimpl16small_any_policyIfE9get_valueEPPv
	.word	_ZN7cvflann7anyimpl21typed_base_any_policyIfE8get_sizeEv
	.word	_ZN7cvflann7anyimpl21typed_base_any_policyIfE4typeEv
	.word	_ZN7cvflann7anyimpl16small_any_policyIfE5printERSoPKPv
	.weak	_ZTVN7cvflann7anyimpl21typed_base_any_policyIfEE
	.section	.rodata._ZTVN7cvflann7anyimpl21typed_base_any_policyIfEE,"aG",%progbits,_ZTVN7cvflann7anyimpl21typed_base_any_policyIfEE,comdat
	.align	3
	.type	_ZTVN7cvflann7anyimpl21typed_base_any_policyIfEE, %object
	.size	_ZTVN7cvflann7anyimpl21typed_base_any_policyIfEE, 40
_ZTVN7cvflann7anyimpl21typed_base_any_policyIfEE:
	.word	0
	.word	_ZTIN7cvflann7anyimpl21typed_base_any_policyIfEE
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	_ZN7cvflann7anyimpl21typed_base_any_policyIfE8get_sizeEv
	.word	_ZN7cvflann7anyimpl21typed_base_any_policyIfE4typeEv
	.word	__cxa_pure_virtual
	.weak	_ZTVN7cvflann7anyimpl16small_any_policyIiEE
	.section	.rodata._ZTVN7cvflann7anyimpl16small_any_policyIiEE,"aG",%progbits,_ZTVN7cvflann7anyimpl16small_any_policyIiEE,comdat
	.align	3
	.type	_ZTVN7cvflann7anyimpl16small_any_policyIiEE, %object
	.size	_ZTVN7cvflann7anyimpl16small_any_policyIiEE, 40
_ZTVN7cvflann7anyimpl16small_any_policyIiEE:
	.word	0
	.word	_ZTIN7cvflann7anyimpl16small_any_policyIiEE
	.word	_ZN7cvflann7anyimpl16small_any_policyIiE13static_deleteEPPv
	.word	_ZN7cvflann7anyimpl16small_any_policyIiE15copy_from_valueEPKvPPv
	.word	_ZN7cvflann7anyimpl16small_any_policyIiE5cloneEPKPvPS3_
	.word	_ZN7cvflann7anyimpl16small_any_policyIiE4moveEPKPvPS3_
	.word	_ZN7cvflann7anyimpl16small_any_policyIiE9get_valueEPPv
	.word	_ZN7cvflann7anyimpl21typed_base_any_policyIiE8get_sizeEv
	.word	_ZN7cvflann7anyimpl21typed_base_any_policyIiE4typeEv
	.word	_ZN7cvflann7anyimpl16small_any_policyIiE5printERSoPKPv
	.weak	_ZTVN7cvflann7anyimpl21typed_base_any_policyIiEE
	.section	.rodata._ZTVN7cvflann7anyimpl21typed_base_any_policyIiEE,"aG",%progbits,_ZTVN7cvflann7anyimpl21typed_base_any_policyIiEE,comdat
	.align	3
	.type	_ZTVN7cvflann7anyimpl21typed_base_any_policyIiEE, %object
	.size	_ZTVN7cvflann7anyimpl21typed_base_any_policyIiEE, 40
_ZTVN7cvflann7anyimpl21typed_base_any_policyIiEE:
	.word	0
	.word	_ZTIN7cvflann7anyimpl21typed_base_any_policyIiEE
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	_ZN7cvflann7anyimpl21typed_base_any_policyIiE8get_sizeEv
	.word	_ZN7cvflann7anyimpl21typed_base_any_policyIiE4typeEv
	.word	__cxa_pure_virtual
	.weak	_ZTVN7cvflann7anyimpl16small_any_policyIPKcEE
	.section	.rodata._ZTVN7cvflann7anyimpl16small_any_policyIPKcEE,"aG",%progbits,_ZTVN7cvflann7anyimpl16small_any_policyIPKcEE,comdat
	.align	3
	.type	_ZTVN7cvflann7anyimpl16small_any_policyIPKcEE, %object
	.size	_ZTVN7cvflann7anyimpl16small_any_policyIPKcEE, 40
_ZTVN7cvflann7anyimpl16small_any_policyIPKcEE:
	.word	0
	.word	_ZTIN7cvflann7anyimpl16small_any_policyIPKcEE
	.word	_ZN7cvflann7anyimpl16small_any_policyIPKcE13static_deleteEPPv
	.word	_ZN7cvflann7anyimpl16small_any_policyIPKcE15copy_from_valueEPKvPPv
	.word	_ZN7cvflann7anyimpl16small_any_policyIPKcE5cloneEPKPvPS5_
	.word	_ZN7cvflann7anyimpl16small_any_policyIPKcE4moveEPKPvPS5_
	.word	_ZN7cvflann7anyimpl16small_any_policyIPKcE9get_valueEPPv
	.word	_ZN7cvflann7anyimpl21typed_base_any_policyIPKcE8get_sizeEv
	.word	_ZN7cvflann7anyimpl21typed_base_any_policyIPKcE4typeEv
	.word	_ZN7cvflann7anyimpl16small_any_policyIPKcE5printERSoPKPv
	.weak	_ZTVN7cvflann7anyimpl21typed_base_any_policyIPKcEE
	.section	.rodata._ZTVN7cvflann7anyimpl21typed_base_any_policyIPKcEE,"aG",%progbits,_ZTVN7cvflann7anyimpl21typed_base_any_policyIPKcEE,comdat
	.align	3
	.type	_ZTVN7cvflann7anyimpl21typed_base_any_policyIPKcEE, %object
	.size	_ZTVN7cvflann7anyimpl21typed_base_any_policyIPKcEE, 40
_ZTVN7cvflann7anyimpl21typed_base_any_policyIPKcEE:
	.word	0
	.word	_ZTIN7cvflann7anyimpl21typed_base_any_policyIPKcEE
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	_ZN7cvflann7anyimpl21typed_base_any_policyIPKcE8get_sizeEv
	.word	_ZN7cvflann7anyimpl21typed_base_any_policyIPKcE4typeEv
	.word	__cxa_pure_virtual
	.weak	_ZTVN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEEE
	.section	.rodata._ZTVN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEEE,"aG",%progbits,_ZTVN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEEE,comdat
	.align	3
	.type	_ZTVN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEEE, %object
	.size	_ZTVN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEEE, 40
_ZTVN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEEE:
	.word	0
	.word	_ZTIN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEEE
	.word	_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE13static_deleteEPPv
	.word	_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE15copy_from_valueEPKvPPv
	.word	_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE5cloneEPKPvPS4_
	.word	_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE4moveEPKPvPS4_
	.word	_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE9get_valueEPPv
	.word	_ZN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEE8get_sizeEv
	.word	_ZN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEE4typeEv
	.word	_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE5printERSoPKPv
	.weak	_ZTVN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEEE
	.section	.rodata._ZTVN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEEE,"aG",%progbits,_ZTVN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEEE,comdat
	.align	3
	.type	_ZTVN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEEE, %object
	.size	_ZTVN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEEE, 40
_ZTVN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEEE:
	.word	0
	.word	_ZTIN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEEE
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	_ZN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEE8get_sizeEv
	.word	_ZN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEE4typeEv
	.word	__cxa_pure_virtual
	.weak	_ZTVN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEEE
	.section	.rodata._ZTVN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEEE,"aG",%progbits,_ZTVN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEEE,comdat
	.align	3
	.type	_ZTVN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEEE, %object
	.size	_ZTVN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEEE, 40
_ZTVN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEEE:
	.word	0
	.word	_ZTIN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEEE
	.word	_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE13static_deleteEPPv
	.word	_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE15copy_from_valueEPKvPPv
	.word	_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE5cloneEPKPvPS4_
	.word	_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE4moveEPKPvPS4_
	.word	_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE9get_valueEPPv
	.word	_ZN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEE8get_sizeEv
	.word	_ZN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEE4typeEv
	.word	_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE5printERSoPKPv
	.weak	_ZTVN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEEE
	.section	.rodata._ZTVN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEEE,"aG",%progbits,_ZTVN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEEE,comdat
	.align	3
	.type	_ZTVN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEEE, %object
	.size	_ZTVN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEEE, 40
_ZTVN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEEE:
	.word	0
	.word	_ZTIN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEEE
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	_ZN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEE8get_sizeEv
	.word	_ZN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEE4typeEv
	.word	__cxa_pure_virtual
	.weak	_ZTVN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEEE
	.section	.rodata._ZTVN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEEE,"aG",%progbits,_ZTVN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEEE,comdat
	.align	3
	.type	_ZTVN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEEE, %object
	.size	_ZTVN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEEE, 40
_ZTVN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEEE:
	.word	0
	.word	_ZTIN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEEE
	.word	_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE13static_deleteEPPv
	.word	_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE15copy_from_valueEPKvPPv
	.word	_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE5cloneEPKPvPS4_
	.word	_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE4moveEPKPvPS4_
	.word	_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE9get_valueEPPv
	.word	_ZN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEE8get_sizeEv
	.word	_ZN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEE4typeEv
	.word	_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE5printERSoPKPv
	.weak	_ZTVN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEEE
	.section	.rodata._ZTVN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEEE,"aG",%progbits,_ZTVN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEEE,comdat
	.align	3
	.type	_ZTVN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEEE, %object
	.size	_ZTVN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEEE, 40
_ZTVN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEEE:
	.word	0
	.word	_ZTIN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEEE
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	_ZN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEE8get_sizeEv
	.word	_ZN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEE4typeEv
	.word	__cxa_pure_virtual
	.weak	_ZTVN7cvflann7anyimpl15base_any_policyE
	.section	.rodata._ZTVN7cvflann7anyimpl15base_any_policyE,"aG",%progbits,_ZTVN7cvflann7anyimpl15base_any_policyE,comdat
	.align	3
	.type	_ZTVN7cvflann7anyimpl15base_any_policyE, %object
	.size	_ZTVN7cvflann7anyimpl15base_any_policyE, 40
_ZTVN7cvflann7anyimpl15base_any_policyE:
	.word	0
	.word	_ZTIN7cvflann7anyimpl15base_any_policyE
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.weak	_ZTSN7cvflann7anyimpl14big_any_policyISsEE
	.section	.rodata._ZTSN7cvflann7anyimpl14big_any_policyISsEE,"aG",%progbits,_ZTSN7cvflann7anyimpl14big_any_policyISsEE,comdat
	.align	2
	.type	_ZTSN7cvflann7anyimpl14big_any_policyISsEE, %object
	.size	_ZTSN7cvflann7anyimpl14big_any_policyISsEE, 39
_ZTSN7cvflann7anyimpl14big_any_policyISsEE:
	.ascii	"N7cvflann7anyimpl14big_any_policyISsEE\000"
	.weak	_ZTIN7cvflann7anyimpl14big_any_policyISsEE
	.section	.rodata._ZTIN7cvflann7anyimpl14big_any_policyISsEE,"aG",%progbits,_ZTIN7cvflann7anyimpl14big_any_policyISsEE,comdat
	.align	2
	.type	_ZTIN7cvflann7anyimpl14big_any_policyISsEE, %object
	.size	_ZTIN7cvflann7anyimpl14big_any_policyISsEE, 12
_ZTIN7cvflann7anyimpl14big_any_policyISsEE:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTSN7cvflann7anyimpl14big_any_policyISsEE
	.word	_ZTIN7cvflann7anyimpl21typed_base_any_policyISsEE
	.weak	_ZTSN7cvflann7anyimpl21typed_base_any_policyISsEE
	.section	.rodata._ZTSN7cvflann7anyimpl21typed_base_any_policyISsEE,"aG",%progbits,_ZTSN7cvflann7anyimpl21typed_base_any_policyISsEE,comdat
	.align	2
	.type	_ZTSN7cvflann7anyimpl21typed_base_any_policyISsEE, %object
	.size	_ZTSN7cvflann7anyimpl21typed_base_any_policyISsEE, 46
_ZTSN7cvflann7anyimpl21typed_base_any_policyISsEE:
	.ascii	"N7cvflann7anyimpl21typed_base_any_policyISsEE\000"
	.weak	_ZTIN7cvflann7anyimpl21typed_base_any_policyISsEE
	.section	.rodata._ZTIN7cvflann7anyimpl21typed_base_any_policyISsEE,"aG",%progbits,_ZTIN7cvflann7anyimpl21typed_base_any_policyISsEE,comdat
	.align	2
	.type	_ZTIN7cvflann7anyimpl21typed_base_any_policyISsEE, %object
	.size	_ZTIN7cvflann7anyimpl21typed_base_any_policyISsEE, 12
_ZTIN7cvflann7anyimpl21typed_base_any_policyISsEE:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTSN7cvflann7anyimpl21typed_base_any_policyISsEE
	.word	_ZTIN7cvflann7anyimpl15base_any_policyE
	.weak	_ZTSN7cvflann7anyimpl16small_any_policyIjEE
	.section	.rodata._ZTSN7cvflann7anyimpl16small_any_policyIjEE,"aG",%progbits,_ZTSN7cvflann7anyimpl16small_any_policyIjEE,comdat
	.align	2
	.type	_ZTSN7cvflann7anyimpl16small_any_policyIjEE, %object
	.size	_ZTSN7cvflann7anyimpl16small_any_policyIjEE, 40
_ZTSN7cvflann7anyimpl16small_any_policyIjEE:
	.ascii	"N7cvflann7anyimpl16small_any_policyIjEE\000"
	.weak	_ZTIN7cvflann7anyimpl16small_any_policyIjEE
	.section	.rodata._ZTIN7cvflann7anyimpl16small_any_policyIjEE,"aG",%progbits,_ZTIN7cvflann7anyimpl16small_any_policyIjEE,comdat
	.align	2
	.type	_ZTIN7cvflann7anyimpl16small_any_policyIjEE, %object
	.size	_ZTIN7cvflann7anyimpl16small_any_policyIjEE, 12
_ZTIN7cvflann7anyimpl16small_any_policyIjEE:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTSN7cvflann7anyimpl16small_any_policyIjEE
	.word	_ZTIN7cvflann7anyimpl21typed_base_any_policyIjEE
	.weak	_ZTSN7cvflann7anyimpl21typed_base_any_policyIjEE
	.section	.rodata._ZTSN7cvflann7anyimpl21typed_base_any_policyIjEE,"aG",%progbits,_ZTSN7cvflann7anyimpl21typed_base_any_policyIjEE,comdat
	.align	2
	.type	_ZTSN7cvflann7anyimpl21typed_base_any_policyIjEE, %object
	.size	_ZTSN7cvflann7anyimpl21typed_base_any_policyIjEE, 45
_ZTSN7cvflann7anyimpl21typed_base_any_policyIjEE:
	.ascii	"N7cvflann7anyimpl21typed_base_any_policyIjEE\000"
	.weak	_ZTIN7cvflann7anyimpl21typed_base_any_policyIjEE
	.section	.rodata._ZTIN7cvflann7anyimpl21typed_base_any_policyIjEE,"aG",%progbits,_ZTIN7cvflann7anyimpl21typed_base_any_policyIjEE,comdat
	.align	2
	.type	_ZTIN7cvflann7anyimpl21typed_base_any_policyIjEE, %object
	.size	_ZTIN7cvflann7anyimpl21typed_base_any_policyIjEE, 12
_ZTIN7cvflann7anyimpl21typed_base_any_policyIjEE:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTSN7cvflann7anyimpl21typed_base_any_policyIjEE
	.word	_ZTIN7cvflann7anyimpl15base_any_policyE
	.weak	_ZTSN7cvflann7anyimpl16small_any_policyIbEE
	.section	.rodata._ZTSN7cvflann7anyimpl16small_any_policyIbEE,"aG",%progbits,_ZTSN7cvflann7anyimpl16small_any_policyIbEE,comdat
	.align	2
	.type	_ZTSN7cvflann7anyimpl16small_any_policyIbEE, %object
	.size	_ZTSN7cvflann7anyimpl16small_any_policyIbEE, 40
_ZTSN7cvflann7anyimpl16small_any_policyIbEE:
	.ascii	"N7cvflann7anyimpl16small_any_policyIbEE\000"
	.weak	_ZTIN7cvflann7anyimpl16small_any_policyIbEE
	.section	.rodata._ZTIN7cvflann7anyimpl16small_any_policyIbEE,"aG",%progbits,_ZTIN7cvflann7anyimpl16small_any_policyIbEE,comdat
	.align	2
	.type	_ZTIN7cvflann7anyimpl16small_any_policyIbEE, %object
	.size	_ZTIN7cvflann7anyimpl16small_any_policyIbEE, 12
_ZTIN7cvflann7anyimpl16small_any_policyIbEE:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTSN7cvflann7anyimpl16small_any_policyIbEE
	.word	_ZTIN7cvflann7anyimpl21typed_base_any_policyIbEE
	.weak	_ZTSN7cvflann7anyimpl21typed_base_any_policyIbEE
	.section	.rodata._ZTSN7cvflann7anyimpl21typed_base_any_policyIbEE,"aG",%progbits,_ZTSN7cvflann7anyimpl21typed_base_any_policyIbEE,comdat
	.align	2
	.type	_ZTSN7cvflann7anyimpl21typed_base_any_policyIbEE, %object
	.size	_ZTSN7cvflann7anyimpl21typed_base_any_policyIbEE, 45
_ZTSN7cvflann7anyimpl21typed_base_any_policyIbEE:
	.ascii	"N7cvflann7anyimpl21typed_base_any_policyIbEE\000"
	.weak	_ZTIN7cvflann7anyimpl21typed_base_any_policyIbEE
	.section	.rodata._ZTIN7cvflann7anyimpl21typed_base_any_policyIbEE,"aG",%progbits,_ZTIN7cvflann7anyimpl21typed_base_any_policyIbEE,comdat
	.align	2
	.type	_ZTIN7cvflann7anyimpl21typed_base_any_policyIbEE, %object
	.size	_ZTIN7cvflann7anyimpl21typed_base_any_policyIbEE, 12
_ZTIN7cvflann7anyimpl21typed_base_any_policyIbEE:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTSN7cvflann7anyimpl21typed_base_any_policyIbEE
	.word	_ZTIN7cvflann7anyimpl15base_any_policyE
	.weak	_ZTSN7cvflann7anyimpl16small_any_policyIfEE
	.section	.rodata._ZTSN7cvflann7anyimpl16small_any_policyIfEE,"aG",%progbits,_ZTSN7cvflann7anyimpl16small_any_policyIfEE,comdat
	.align	2
	.type	_ZTSN7cvflann7anyimpl16small_any_policyIfEE, %object
	.size	_ZTSN7cvflann7anyimpl16small_any_policyIfEE, 40
_ZTSN7cvflann7anyimpl16small_any_policyIfEE:
	.ascii	"N7cvflann7anyimpl16small_any_policyIfEE\000"
	.weak	_ZTIN7cvflann7anyimpl16small_any_policyIfEE
	.section	.rodata._ZTIN7cvflann7anyimpl16small_any_policyIfEE,"aG",%progbits,_ZTIN7cvflann7anyimpl16small_any_policyIfEE,comdat
	.align	2
	.type	_ZTIN7cvflann7anyimpl16small_any_policyIfEE, %object
	.size	_ZTIN7cvflann7anyimpl16small_any_policyIfEE, 12
_ZTIN7cvflann7anyimpl16small_any_policyIfEE:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTSN7cvflann7anyimpl16small_any_policyIfEE
	.word	_ZTIN7cvflann7anyimpl21typed_base_any_policyIfEE
	.weak	_ZTSN7cvflann7anyimpl21typed_base_any_policyIfEE
	.section	.rodata._ZTSN7cvflann7anyimpl21typed_base_any_policyIfEE,"aG",%progbits,_ZTSN7cvflann7anyimpl21typed_base_any_policyIfEE,comdat
	.align	2
	.type	_ZTSN7cvflann7anyimpl21typed_base_any_policyIfEE, %object
	.size	_ZTSN7cvflann7anyimpl21typed_base_any_policyIfEE, 45
_ZTSN7cvflann7anyimpl21typed_base_any_policyIfEE:
	.ascii	"N7cvflann7anyimpl21typed_base_any_policyIfEE\000"
	.weak	_ZTIN7cvflann7anyimpl21typed_base_any_policyIfEE
	.section	.rodata._ZTIN7cvflann7anyimpl21typed_base_any_policyIfEE,"aG",%progbits,_ZTIN7cvflann7anyimpl21typed_base_any_policyIfEE,comdat
	.align	2
	.type	_ZTIN7cvflann7anyimpl21typed_base_any_policyIfEE, %object
	.size	_ZTIN7cvflann7anyimpl21typed_base_any_policyIfEE, 12
_ZTIN7cvflann7anyimpl21typed_base_any_policyIfEE:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTSN7cvflann7anyimpl21typed_base_any_policyIfEE
	.word	_ZTIN7cvflann7anyimpl15base_any_policyE
	.weak	_ZTSN7cvflann7anyimpl16small_any_policyIiEE
	.section	.rodata._ZTSN7cvflann7anyimpl16small_any_policyIiEE,"aG",%progbits,_ZTSN7cvflann7anyimpl16small_any_policyIiEE,comdat
	.align	2
	.type	_ZTSN7cvflann7anyimpl16small_any_policyIiEE, %object
	.size	_ZTSN7cvflann7anyimpl16small_any_policyIiEE, 40
_ZTSN7cvflann7anyimpl16small_any_policyIiEE:
	.ascii	"N7cvflann7anyimpl16small_any_policyIiEE\000"
	.weak	_ZTIN7cvflann7anyimpl16small_any_policyIiEE
	.section	.rodata._ZTIN7cvflann7anyimpl16small_any_policyIiEE,"aG",%progbits,_ZTIN7cvflann7anyimpl16small_any_policyIiEE,comdat
	.align	2
	.type	_ZTIN7cvflann7anyimpl16small_any_policyIiEE, %object
	.size	_ZTIN7cvflann7anyimpl16small_any_policyIiEE, 12
_ZTIN7cvflann7anyimpl16small_any_policyIiEE:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTSN7cvflann7anyimpl16small_any_policyIiEE
	.word	_ZTIN7cvflann7anyimpl21typed_base_any_policyIiEE
	.weak	_ZTSN7cvflann7anyimpl21typed_base_any_policyIiEE
	.section	.rodata._ZTSN7cvflann7anyimpl21typed_base_any_policyIiEE,"aG",%progbits,_ZTSN7cvflann7anyimpl21typed_base_any_policyIiEE,comdat
	.align	2
	.type	_ZTSN7cvflann7anyimpl21typed_base_any_policyIiEE, %object
	.size	_ZTSN7cvflann7anyimpl21typed_base_any_policyIiEE, 45
_ZTSN7cvflann7anyimpl21typed_base_any_policyIiEE:
	.ascii	"N7cvflann7anyimpl21typed_base_any_policyIiEE\000"
	.weak	_ZTIN7cvflann7anyimpl21typed_base_any_policyIiEE
	.section	.rodata._ZTIN7cvflann7anyimpl21typed_base_any_policyIiEE,"aG",%progbits,_ZTIN7cvflann7anyimpl21typed_base_any_policyIiEE,comdat
	.align	2
	.type	_ZTIN7cvflann7anyimpl21typed_base_any_policyIiEE, %object
	.size	_ZTIN7cvflann7anyimpl21typed_base_any_policyIiEE, 12
_ZTIN7cvflann7anyimpl21typed_base_any_policyIiEE:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTSN7cvflann7anyimpl21typed_base_any_policyIiEE
	.word	_ZTIN7cvflann7anyimpl15base_any_policyE
	.weak	_ZTSN7cvflann7anyimpl16small_any_policyIPKcEE
	.section	.rodata._ZTSN7cvflann7anyimpl16small_any_policyIPKcEE,"aG",%progbits,_ZTSN7cvflann7anyimpl16small_any_policyIPKcEE,comdat
	.align	2
	.type	_ZTSN7cvflann7anyimpl16small_any_policyIPKcEE, %object
	.size	_ZTSN7cvflann7anyimpl16small_any_policyIPKcEE, 42
_ZTSN7cvflann7anyimpl16small_any_policyIPKcEE:
	.ascii	"N7cvflann7anyimpl16small_any_policyIPKcEE\000"
	.weak	_ZTIN7cvflann7anyimpl16small_any_policyIPKcEE
	.section	.rodata._ZTIN7cvflann7anyimpl16small_any_policyIPKcEE,"aG",%progbits,_ZTIN7cvflann7anyimpl16small_any_policyIPKcEE,comdat
	.align	2
	.type	_ZTIN7cvflann7anyimpl16small_any_policyIPKcEE, %object
	.size	_ZTIN7cvflann7anyimpl16small_any_policyIPKcEE, 12
_ZTIN7cvflann7anyimpl16small_any_policyIPKcEE:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTSN7cvflann7anyimpl16small_any_policyIPKcEE
	.word	_ZTIN7cvflann7anyimpl21typed_base_any_policyIPKcEE
	.weak	_ZTSN7cvflann7anyimpl21typed_base_any_policyIPKcEE
	.section	.rodata._ZTSN7cvflann7anyimpl21typed_base_any_policyIPKcEE,"aG",%progbits,_ZTSN7cvflann7anyimpl21typed_base_any_policyIPKcEE,comdat
	.align	2
	.type	_ZTSN7cvflann7anyimpl21typed_base_any_policyIPKcEE, %object
	.size	_ZTSN7cvflann7anyimpl21typed_base_any_policyIPKcEE, 47
_ZTSN7cvflann7anyimpl21typed_base_any_policyIPKcEE:
	.ascii	"N7cvflann7anyimpl21typed_base_any_policyIPKcEE\000"
	.weak	_ZTIN7cvflann7anyimpl21typed_base_any_policyIPKcEE
	.section	.rodata._ZTIN7cvflann7anyimpl21typed_base_any_policyIPKcEE,"aG",%progbits,_ZTIN7cvflann7anyimpl21typed_base_any_policyIPKcEE,comdat
	.align	2
	.type	_ZTIN7cvflann7anyimpl21typed_base_any_policyIPKcEE, %object
	.size	_ZTIN7cvflann7anyimpl21typed_base_any_policyIPKcEE, 12
_ZTIN7cvflann7anyimpl21typed_base_any_policyIPKcEE:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTSN7cvflann7anyimpl21typed_base_any_policyIPKcEE
	.word	_ZTIN7cvflann7anyimpl15base_any_policyE
	.weak	_ZTSN7cvflann7anyimpl9empty_anyE
	.section	.rodata._ZTSN7cvflann7anyimpl9empty_anyE,"aG",%progbits,_ZTSN7cvflann7anyimpl9empty_anyE,comdat
	.align	2
	.type	_ZTSN7cvflann7anyimpl9empty_anyE, %object
	.size	_ZTSN7cvflann7anyimpl9empty_anyE, 29
_ZTSN7cvflann7anyimpl9empty_anyE:
	.ascii	"N7cvflann7anyimpl9empty_anyE\000"
	.weak	_ZTIN7cvflann7anyimpl9empty_anyE
	.section	.rodata._ZTIN7cvflann7anyimpl9empty_anyE,"aG",%progbits,_ZTIN7cvflann7anyimpl9empty_anyE,comdat
	.align	2
	.type	_ZTIN7cvflann7anyimpl9empty_anyE, %object
	.size	_ZTIN7cvflann7anyimpl9empty_anyE, 8
_ZTIN7cvflann7anyimpl9empty_anyE:
	.word	_ZTVN10__cxxabiv117__class_type_infoE+8
	.word	_ZTSN7cvflann7anyimpl9empty_anyE
	.weak	_ZTSN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEEE
	.section	.rodata._ZTSN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEEE,"aG",%progbits,_ZTSN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEEE,comdat
	.align	2
	.type	_ZTSN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEEE, %object
	.size	_ZTSN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEEE, 52
_ZTSN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEEE:
	.ascii	"N7cvflann7anyimpl14big_any_policyINS0_9empty_anyEEE"
	.ascii	"\000"
	.weak	_ZTIN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEEE
	.section	.rodata._ZTIN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEEE,"aG",%progbits,_ZTIN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEEE,comdat
	.align	2
	.type	_ZTIN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEEE, %object
	.size	_ZTIN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEEE, 12
_ZTIN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEEE:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTSN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEEE
	.word	_ZTIN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEEE
	.weak	_ZTSN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEEE
	.section	.rodata._ZTSN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEEE,"aG",%progbits,_ZTSN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEEE,comdat
	.align	2
	.type	_ZTSN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEEE, %object
	.size	_ZTSN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEEE, 59
_ZTSN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEEE:
	.ascii	"N7cvflann7anyimpl21typed_base_any_policyINS0_9empty"
	.ascii	"_anyEEE\000"
	.weak	_ZTIN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEEE
	.section	.rodata._ZTIN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEEE,"aG",%progbits,_ZTIN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEEE,comdat
	.align	2
	.type	_ZTIN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEEE, %object
	.size	_ZTIN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEEE, 12
_ZTIN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEEE:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTSN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEEE
	.word	_ZTIN7cvflann7anyimpl15base_any_policyE
	.weak	_ZTSN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEEE
	.section	.rodata._ZTSN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEEE,"aG",%progbits,_ZTSN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEEE,comdat
	.align	2
	.type	_ZTSN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEEE, %object
	.size	_ZTSN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEEE, 60
_ZTSN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEEE:
	.ascii	"N7cvflann7anyimpl14big_any_policyINS_17flann_algori"
	.ascii	"thm_tEEE\000"
	.weak	_ZTIN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEEE
	.section	.rodata._ZTIN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEEE,"aG",%progbits,_ZTIN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEEE,comdat
	.align	2
	.type	_ZTIN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEEE, %object
	.size	_ZTIN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEEE, 12
_ZTIN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEEE:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTSN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEEE
	.word	_ZTIN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEEE
	.weak	_ZTSN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEEE
	.section	.rodata._ZTSN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEEE,"aG",%progbits,_ZTSN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEEE,comdat
	.align	2
	.type	_ZTSN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEEE, %object
	.size	_ZTSN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEEE, 67
_ZTSN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEEE:
	.ascii	"N7cvflann7anyimpl21typed_base_any_policyINS_17flann"
	.ascii	"_algorithm_tEEE\000"
	.weak	_ZTIN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEEE
	.section	.rodata._ZTIN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEEE,"aG",%progbits,_ZTIN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEEE,comdat
	.align	2
	.type	_ZTIN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEEE, %object
	.size	_ZTIN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEEE, 12
_ZTIN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEEE:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTSN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEEE
	.word	_ZTIN7cvflann7anyimpl15base_any_policyE
	.weak	_ZTSN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEEE
	.section	.rodata._ZTSN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEEE,"aG",%progbits,_ZTSN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEEE,comdat
	.align	2
	.type	_ZTSN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEEE, %object
	.size	_ZTSN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEEE, 63
_ZTSN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEEE:
	.ascii	"N7cvflann7anyimpl14big_any_policyINS_20flann_center"
	.ascii	"s_init_tEEE\000"
	.weak	_ZTIN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEEE
	.section	.rodata._ZTIN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEEE,"aG",%progbits,_ZTIN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEEE,comdat
	.align	2
	.type	_ZTIN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEEE, %object
	.size	_ZTIN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEEE, 12
_ZTIN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEEE:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTSN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEEE
	.word	_ZTIN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEEE
	.weak	_ZTSN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEEE
	.section	.rodata._ZTSN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEEE,"aG",%progbits,_ZTSN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEEE,comdat
	.align	2
	.type	_ZTSN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEEE, %object
	.size	_ZTSN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEEE, 70
_ZTSN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEEE:
	.ascii	"N7cvflann7anyimpl21typed_base_any_policyINS_20flann"
	.ascii	"_centers_init_tEEE\000"
	.weak	_ZTIN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEEE
	.section	.rodata._ZTIN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEEE,"aG",%progbits,_ZTIN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEEE,comdat
	.align	2
	.type	_ZTIN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEEE, %object
	.size	_ZTIN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEEE, 12
_ZTIN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEEE:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTSN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEEE
	.word	_ZTIN7cvflann7anyimpl15base_any_policyE
	.weak	_ZTSN7cvflann7anyimpl15base_any_policyE
	.section	.rodata._ZTSN7cvflann7anyimpl15base_any_policyE,"aG",%progbits,_ZTSN7cvflann7anyimpl15base_any_policyE,comdat
	.align	2
	.type	_ZTSN7cvflann7anyimpl15base_any_policyE, %object
	.size	_ZTSN7cvflann7anyimpl15base_any_policyE, 36
_ZTSN7cvflann7anyimpl15base_any_policyE:
	.ascii	"N7cvflann7anyimpl15base_any_policyE\000"
	.weak	_ZTIN7cvflann7anyimpl15base_any_policyE
	.section	.rodata._ZTIN7cvflann7anyimpl15base_any_policyE,"aG",%progbits,_ZTIN7cvflann7anyimpl15base_any_policyE,comdat
	.align	2
	.type	_ZTIN7cvflann7anyimpl15base_any_policyE, %object
	.size	_ZTIN7cvflann7anyimpl15base_any_policyE, 8
_ZTIN7cvflann7anyimpl15base_any_policyE:
	.word	_ZTVN10__cxxabiv117__class_type_infoE+8
	.word	_ZTSN7cvflann7anyimpl15base_any_policyE
	.weak	_ZN7cvflann7anyimpl12SinglePolicyINS0_9empty_anyEE6policyE
	.section	.bss._ZN7cvflann7anyimpl12SinglePolicyINS0_9empty_anyEE6policyE,"awG",%nobits,_ZN7cvflann7anyimpl12SinglePolicyINS0_9empty_anyEE6policyE,comdat
	.align	2
	.type	_ZN7cvflann7anyimpl12SinglePolicyINS0_9empty_anyEE6policyE, %gnu_unique_object
	.size	_ZN7cvflann7anyimpl12SinglePolicyINS0_9empty_anyEE6policyE, 4
_ZN7cvflann7anyimpl12SinglePolicyINS0_9empty_anyEE6policyE:
	.space	4
	.weak	_ZN7cvflann7anyimpl12SinglePolicyIPKcE6policyE
	.section	.bss._ZN7cvflann7anyimpl12SinglePolicyIPKcE6policyE,"awG",%nobits,_ZN7cvflann7anyimpl12SinglePolicyIPKcE6policyE,comdat
	.align	2
	.type	_ZN7cvflann7anyimpl12SinglePolicyIPKcE6policyE, %gnu_unique_object
	.size	_ZN7cvflann7anyimpl12SinglePolicyIPKcE6policyE, 4
_ZN7cvflann7anyimpl12SinglePolicyIPKcE6policyE:
	.space	4
	.weak	_ZN7cvflann7anyimpl12SinglePolicyIiE6policyE
	.section	.bss._ZN7cvflann7anyimpl12SinglePolicyIiE6policyE,"awG",%nobits,_ZN7cvflann7anyimpl12SinglePolicyIiE6policyE,comdat
	.align	2
	.type	_ZN7cvflann7anyimpl12SinglePolicyIiE6policyE, %gnu_unique_object
	.size	_ZN7cvflann7anyimpl12SinglePolicyIiE6policyE, 4
_ZN7cvflann7anyimpl12SinglePolicyIiE6policyE:
	.space	4
	.weak	_ZN7cvflann7anyimpl12SinglePolicyIfE6policyE
	.section	.bss._ZN7cvflann7anyimpl12SinglePolicyIfE6policyE,"awG",%nobits,_ZN7cvflann7anyimpl12SinglePolicyIfE6policyE,comdat
	.align	2
	.type	_ZN7cvflann7anyimpl12SinglePolicyIfE6policyE, %gnu_unique_object
	.size	_ZN7cvflann7anyimpl12SinglePolicyIfE6policyE, 4
_ZN7cvflann7anyimpl12SinglePolicyIfE6policyE:
	.space	4
	.weak	_ZN7cvflann7anyimpl12SinglePolicyIbE6policyE
	.section	.bss._ZN7cvflann7anyimpl12SinglePolicyIbE6policyE,"awG",%nobits,_ZN7cvflann7anyimpl12SinglePolicyIbE6policyE,comdat
	.align	2
	.type	_ZN7cvflann7anyimpl12SinglePolicyIbE6policyE, %gnu_unique_object
	.size	_ZN7cvflann7anyimpl12SinglePolicyIbE6policyE, 4
_ZN7cvflann7anyimpl12SinglePolicyIbE6policyE:
	.space	4
	.weak	_ZN7cvflann7anyimpl12SinglePolicyINS_17flann_algorithm_tEE6policyE
	.section	.bss._ZN7cvflann7anyimpl12SinglePolicyINS_17flann_algorithm_tEE6policyE,"awG",%nobits,_ZN7cvflann7anyimpl12SinglePolicyINS_17flann_algorithm_tEE6policyE,comdat
	.align	2
	.type	_ZN7cvflann7anyimpl12SinglePolicyINS_17flann_algorithm_tEE6policyE, %gnu_unique_object
	.size	_ZN7cvflann7anyimpl12SinglePolicyINS_17flann_algorithm_tEE6policyE, 4
_ZN7cvflann7anyimpl12SinglePolicyINS_17flann_algorithm_tEE6policyE:
	.space	4
	.weak	_ZN7cvflann7anyimpl12SinglePolicyINS_20flann_centers_init_tEE6policyE
	.section	.bss._ZN7cvflann7anyimpl12SinglePolicyINS_20flann_centers_init_tEE6policyE,"awG",%nobits,_ZN7cvflann7anyimpl12SinglePolicyINS_20flann_centers_init_tEE6policyE,comdat
	.align	2
	.type	_ZN7cvflann7anyimpl12SinglePolicyINS_20flann_centers_init_tEE6policyE, %gnu_unique_object
	.size	_ZN7cvflann7anyimpl12SinglePolicyINS_20flann_centers_init_tEE6policyE, 4
_ZN7cvflann7anyimpl12SinglePolicyINS_20flann_centers_init_tEE6policyE:
	.space	4
	.weak	_ZN7cvflann7anyimpl12SinglePolicyIjE6policyE
	.section	.bss._ZN7cvflann7anyimpl12SinglePolicyIjE6policyE,"awG",%nobits,_ZN7cvflann7anyimpl12SinglePolicyIjE6policyE,comdat
	.align	2
	.type	_ZN7cvflann7anyimpl12SinglePolicyIjE6policyE, %gnu_unique_object
	.size	_ZN7cvflann7anyimpl12SinglePolicyIjE6policyE, 4
_ZN7cvflann7anyimpl12SinglePolicyIjE6policyE:
	.space	4
	.weak	_ZN7cvflann7anyimpl12SinglePolicyISsE6policyE
	.section	.bss._ZN7cvflann7anyimpl12SinglePolicyISsE6policyE,"awG",%nobits,_ZN7cvflann7anyimpl12SinglePolicyISsE6policyE,comdat
	.align	2
	.type	_ZN7cvflann7anyimpl12SinglePolicyISsE6policyE, %gnu_unique_object
	.size	_ZN7cvflann7anyimpl12SinglePolicyISsE6policyE, 4
_ZN7cvflann7anyimpl12SinglePolicyISsE6policyE:
	.space	4
	.weak	_ZGVN7cvflann7anyimpl12SinglePolicyINS0_9empty_anyEE6policyE
	.section	.bss._ZGVN7cvflann7anyimpl12SinglePolicyINS0_9empty_anyEE6policyE,"awG",%nobits,_ZGVN7cvflann7anyimpl12SinglePolicyINS0_9empty_anyEE6policyE,comdat
	.align	2
	.type	_ZGVN7cvflann7anyimpl12SinglePolicyINS0_9empty_anyEE6policyE, %gnu_unique_object
	.size	_ZGVN7cvflann7anyimpl12SinglePolicyINS0_9empty_anyEE6policyE, 4
_ZGVN7cvflann7anyimpl12SinglePolicyINS0_9empty_anyEE6policyE:
	.space	4
	.weak	_ZGVN7cvflann7anyimpl12SinglePolicyIPKcE6policyE
	.section	.bss._ZGVN7cvflann7anyimpl12SinglePolicyIPKcE6policyE,"awG",%nobits,_ZGVN7cvflann7anyimpl12SinglePolicyIPKcE6policyE,comdat
	.align	2
	.type	_ZGVN7cvflann7anyimpl12SinglePolicyIPKcE6policyE, %gnu_unique_object
	.size	_ZGVN7cvflann7anyimpl12SinglePolicyIPKcE6policyE, 4
_ZGVN7cvflann7anyimpl12SinglePolicyIPKcE6policyE:
	.space	4
	.weak	_ZGVN7cvflann7anyimpl12SinglePolicyIiE6policyE
	.section	.bss._ZGVN7cvflann7anyimpl12SinglePolicyIiE6policyE,"awG",%nobits,_ZGVN7cvflann7anyimpl12SinglePolicyIiE6policyE,comdat
	.align	2
	.type	_ZGVN7cvflann7anyimpl12SinglePolicyIiE6policyE, %gnu_unique_object
	.size	_ZGVN7cvflann7anyimpl12SinglePolicyIiE6policyE, 4
_ZGVN7cvflann7anyimpl12SinglePolicyIiE6policyE:
	.space	4
	.weak	_ZGVN7cvflann7anyimpl12SinglePolicyIfE6policyE
	.section	.bss._ZGVN7cvflann7anyimpl12SinglePolicyIfE6policyE,"awG",%nobits,_ZGVN7cvflann7anyimpl12SinglePolicyIfE6policyE,comdat
	.align	2
	.type	_ZGVN7cvflann7anyimpl12SinglePolicyIfE6policyE, %gnu_unique_object
	.size	_ZGVN7cvflann7anyimpl12SinglePolicyIfE6policyE, 4
_ZGVN7cvflann7anyimpl12SinglePolicyIfE6policyE:
	.space	4
	.weak	_ZGVN7cvflann7anyimpl12SinglePolicyIbE6policyE
	.section	.bss._ZGVN7cvflann7anyimpl12SinglePolicyIbE6policyE,"awG",%nobits,_ZGVN7cvflann7anyimpl12SinglePolicyIbE6policyE,comdat
	.align	2
	.type	_ZGVN7cvflann7anyimpl12SinglePolicyIbE6policyE, %gnu_unique_object
	.size	_ZGVN7cvflann7anyimpl12SinglePolicyIbE6policyE, 4
_ZGVN7cvflann7anyimpl12SinglePolicyIbE6policyE:
	.space	4
	.weak	_ZGVN7cvflann7anyimpl12SinglePolicyINS_17flann_algorithm_tEE6policyE
	.section	.bss._ZGVN7cvflann7anyimpl12SinglePolicyINS_17flann_algorithm_tEE6policyE,"awG",%nobits,_ZGVN7cvflann7anyimpl12SinglePolicyINS_17flann_algorithm_tEE6policyE,comdat
	.align	2
	.type	_ZGVN7cvflann7anyimpl12SinglePolicyINS_17flann_algorithm_tEE6policyE, %gnu_unique_object
	.size	_ZGVN7cvflann7anyimpl12SinglePolicyINS_17flann_algorithm_tEE6policyE, 4
_ZGVN7cvflann7anyimpl12SinglePolicyINS_17flann_algorithm_tEE6policyE:
	.space	4
	.weak	_ZGVN7cvflann7anyimpl12SinglePolicyINS_20flann_centers_init_tEE6policyE
	.section	.bss._ZGVN7cvflann7anyimpl12SinglePolicyINS_20flann_centers_init_tEE6policyE,"awG",%nobits,_ZGVN7cvflann7anyimpl12SinglePolicyINS_20flann_centers_init_tEE6policyE,comdat
	.align	2
	.type	_ZGVN7cvflann7anyimpl12SinglePolicyINS_20flann_centers_init_tEE6policyE, %gnu_unique_object
	.size	_ZGVN7cvflann7anyimpl12SinglePolicyINS_20flann_centers_init_tEE6policyE, 4
_ZGVN7cvflann7anyimpl12SinglePolicyINS_20flann_centers_init_tEE6policyE:
	.space	4
	.weak	_ZGVN7cvflann7anyimpl12SinglePolicyIjE6policyE
	.section	.bss._ZGVN7cvflann7anyimpl12SinglePolicyIjE6policyE,"awG",%nobits,_ZGVN7cvflann7anyimpl12SinglePolicyIjE6policyE,comdat
	.align	2
	.type	_ZGVN7cvflann7anyimpl12SinglePolicyIjE6policyE, %gnu_unique_object
	.size	_ZGVN7cvflann7anyimpl12SinglePolicyIjE6policyE, 4
_ZGVN7cvflann7anyimpl12SinglePolicyIjE6policyE:
	.space	4
	.weak	_ZGVN7cvflann7anyimpl12SinglePolicyISsE6policyE
	.section	.bss._ZGVN7cvflann7anyimpl12SinglePolicyISsE6policyE,"awG",%nobits,_ZGVN7cvflann7anyimpl12SinglePolicyISsE6policyE,comdat
	.align	2
	.type	_ZGVN7cvflann7anyimpl12SinglePolicyISsE6policyE, %gnu_unique_object
	.size	_ZGVN7cvflann7anyimpl12SinglePolicyISsE6policyE, 4
_ZGVN7cvflann7anyimpl12SinglePolicyISsE6policyE:
	.space	4
	.text
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
	.fnstart
.LFB7203:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-8]
	cmp	r3, #1
	bne	.L475
	ldr	r3, [fp, #-12]
	ldr	r2, .L485
	cmp	r3, r2
	bne	.L475
	ldr	r0, .L485+4
	bl	_ZNSt8ios_base4InitC1Ev
	ldr	r0, .L485+4
	ldr	r1, .L485+8
	ldr	r2, .L485+12
	bl	__aeabi_atexit
	ldr	r3, .L485+16
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L477
	ldr	r3, .L485+16
	mov	r2, #1
	str	r2, [r3]
	ldr	r0, .L485+20
	bl	_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEEC1Ev
.L477:
	ldr	r3, .L485+24
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L478
	ldr	r3, .L485+24
	mov	r2, #1
	str	r2, [r3]
	ldr	r0, .L485+28
	bl	_ZN7cvflann7anyimpl16small_any_policyIPKcEC1Ev
.L478:
	ldr	r3, .L485+32
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L479
	ldr	r3, .L485+32
	mov	r2, #1
	str	r2, [r3]
	ldr	r0, .L485+36
	bl	_ZN7cvflann7anyimpl16small_any_policyIiEC1Ev
.L479:
	ldr	r3, .L485+40
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L480
	ldr	r3, .L485+40
	mov	r2, #1
	str	r2, [r3]
	ldr	r0, .L485+44
	bl	_ZN7cvflann7anyimpl16small_any_policyIfEC1Ev
.L480:
	ldr	r3, .L485+48
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L481
	ldr	r3, .L485+48
	mov	r2, #1
	str	r2, [r3]
	ldr	r0, .L485+52
	bl	_ZN7cvflann7anyimpl16small_any_policyIbEC1Ev
.L481:
	ldr	r3, .L485+56
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L482
	ldr	r3, .L485+56
	mov	r2, #1
	str	r2, [r3]
	ldr	r0, .L485+60
	bl	_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEEC1Ev
.L482:
	ldr	r3, .L485+64
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L483
	ldr	r3, .L485+64
	mov	r2, #1
	str	r2, [r3]
	ldr	r0, .L485+68
	bl	_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEEC1Ev
.L483:
	ldr	r3, .L485+72
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L484
	ldr	r3, .L485+72
	mov	r2, #1
	str	r2, [r3]
	ldr	r0, .L485+76
	bl	_ZN7cvflann7anyimpl16small_any_policyIjEC1Ev
.L484:
	ldr	r3, .L485+80
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L475
	ldr	r3, .L485+80
	mov	r2, #1
	str	r2, [r3]
	ldr	r0, .L485+84
	bl	_ZN7cvflann7anyimpl14big_any_policyISsEC1Ev
.L475:
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L486:
	.align	2
.L485:
	.word	65535
	.word	_ZStL8__ioinit
	.word	_ZNSt8ios_base4InitD1Ev
	.word	__dso_handle
	.word	_ZGVN7cvflann7anyimpl12SinglePolicyINS0_9empty_anyEE6policyE
	.word	_ZN7cvflann7anyimpl12SinglePolicyINS0_9empty_anyEE6policyE
	.word	_ZGVN7cvflann7anyimpl12SinglePolicyIPKcE6policyE
	.word	_ZN7cvflann7anyimpl12SinglePolicyIPKcE6policyE
	.word	_ZGVN7cvflann7anyimpl12SinglePolicyIiE6policyE
	.word	_ZN7cvflann7anyimpl12SinglePolicyIiE6policyE
	.word	_ZGVN7cvflann7anyimpl12SinglePolicyIfE6policyE
	.word	_ZN7cvflann7anyimpl12SinglePolicyIfE6policyE
	.word	_ZGVN7cvflann7anyimpl12SinglePolicyIbE6policyE
	.word	_ZN7cvflann7anyimpl12SinglePolicyIbE6policyE
	.word	_ZGVN7cvflann7anyimpl12SinglePolicyINS_17flann_algorithm_tEE6policyE
	.word	_ZN7cvflann7anyimpl12SinglePolicyINS_17flann_algorithm_tEE6policyE
	.word	_ZGVN7cvflann7anyimpl12SinglePolicyINS_20flann_centers_init_tEE6policyE
	.word	_ZN7cvflann7anyimpl12SinglePolicyINS_20flann_centers_init_tEE6policyE
	.word	_ZGVN7cvflann7anyimpl12SinglePolicyIjE6policyE
	.word	_ZN7cvflann7anyimpl12SinglePolicyIjE6policyE
	.word	_ZGVN7cvflann7anyimpl12SinglePolicyISsE6policyE
	.word	_ZN7cvflann7anyimpl12SinglePolicyISsE6policyE
	.cantunwind
	.fnend
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.section	.rodata
	.align	2
	.type	_ZN7cvflannL8WORDSIZEE, %object
	.size	_ZN7cvflannL8WORDSIZEE, 4
_ZN7cvflannL8WORDSIZEE:
	.word	16
	.align	2
	.type	_ZN7cvflannL9BLOCKSIZEE, %object
	.size	_ZN7cvflannL9BLOCKSIZEE, 4
_ZN7cvflannL9BLOCKSIZEE:
	.word	8192
	.section	.text._ZN7cvflann7anyimpl14big_any_policyISsE13static_deleteEPPv,"axG",%progbits,_ZN7cvflann7anyimpl14big_any_policyISsE13static_deleteEPPv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl14big_any_policyISsE13static_deleteEPPv
	.type	_ZN7cvflann7anyimpl14big_any_policyISsE13static_deleteEPPv, %function
_ZN7cvflann7anyimpl14big_any_policyISsE13static_deleteEPPv:
	.fnstart
.LFB7236:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	.save {r4, fp, lr}
	.setfp fp, sp, #8
	add	fp, sp, #8
	.pad #12
	sub	sp, sp, #12
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L488
	ldr	r3, [fp, #-20]
	ldr	r4, [r3]
	cmp	r4, #0
	beq	.L488
	mov	r0, r4
	bl	_ZNSsD1Ev
	mov	r0, r4
	bl	_ZdlPv
.L488:
	ldr	r3, [fp, #-20]
	mov	r2, #0
	str	r2, [r3]
	sub	sp, fp, #8
	@ sp needed
	ldmfd	sp!, {r4, fp, pc}
	.fnend
	.size	_ZN7cvflann7anyimpl14big_any_policyISsE13static_deleteEPPv, .-_ZN7cvflann7anyimpl14big_any_policyISsE13static_deleteEPPv
	.section	.text._ZN7cvflann7anyimpl14big_any_policyISsE15copy_from_valueEPKvPPv,"axG",%progbits,_ZN7cvflann7anyimpl14big_any_policyISsE15copy_from_valueEPKvPPv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl14big_any_policyISsE15copy_from_valueEPKvPPv
	.type	_ZN7cvflann7anyimpl14big_any_policyISsE15copy_from_valueEPKvPPv, %function
_ZN7cvflann7anyimpl14big_any_policyISsE15copy_from_valueEPKvPPv:
	.fnstart
.LFB7237:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	.save {r4, fp, lr}
	.setfp fp, sp, #8
	add	fp, sp, #8
	.pad #20
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	mov	r0, #4
.LEHB57:
	bl	_Znwj
.LEHE57:
	mov	r4, r0
	mov	r0, r4
	ldr	r1, [fp, #-20]
.LEHB58:
	bl	_ZNSsC1ERKSs
.LEHE58:
	ldr	r3, [fp, #-24]
	str	r4, [r3]
	b	.L492
.L491:
	mov	r0, r4
	bl	_ZdlPv
.LEHB59:
	bl	__cxa_end_cleanup
.LEHE59:
.L492:
	sub	sp, fp, #8
	@ sp needed
	ldmfd	sp!, {r4, fp, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA7237:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7237-.LLSDACSB7237
.LLSDACSB7237:
	.uleb128 .LEHB57-.LFB7237
	.uleb128 .LEHE57-.LEHB57
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB58-.LFB7237
	.uleb128 .LEHE58-.LEHB58
	.uleb128 .L491-.LFB7237
	.uleb128 0
	.uleb128 .LEHB59-.LFB7237
	.uleb128 .LEHE59-.LEHB59
	.uleb128 0
	.uleb128 0
.LLSDACSE7237:
	.section	.text._ZN7cvflann7anyimpl14big_any_policyISsE15copy_from_valueEPKvPPv,"axG",%progbits,_ZN7cvflann7anyimpl14big_any_policyISsE15copy_from_valueEPKvPPv,comdat
	.fnend
	.size	_ZN7cvflann7anyimpl14big_any_policyISsE15copy_from_valueEPKvPPv, .-_ZN7cvflann7anyimpl14big_any_policyISsE15copy_from_valueEPKvPPv
	.section	.text._ZN7cvflann7anyimpl14big_any_policyISsE5cloneEPKPvPS3_,"axG",%progbits,_ZN7cvflann7anyimpl14big_any_policyISsE5cloneEPKPvPS3_,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl14big_any_policyISsE5cloneEPKPvPS3_
	.type	_ZN7cvflann7anyimpl14big_any_policyISsE5cloneEPKPvPS3_, %function
_ZN7cvflann7anyimpl14big_any_policyISsE5cloneEPKPvPS3_:
	.fnstart
.LFB7238:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	.save {r4, fp, lr}
	.setfp fp, sp, #8
	add	fp, sp, #8
	.pad #20
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	mov	r0, #4
.LEHB60:
	bl	_Znwj
.LEHE60:
	mov	r4, r0
	ldr	r3, [fp, #-20]
	ldr	r3, [r3]
	mov	r0, r4
	mov	r1, r3
.LEHB61:
	bl	_ZNSsC1ERKSs
.LEHE61:
	ldr	r3, [fp, #-24]
	str	r4, [r3]
	b	.L496
.L495:
	mov	r0, r4
	bl	_ZdlPv
.LEHB62:
	bl	__cxa_end_cleanup
.LEHE62:
.L496:
	sub	sp, fp, #8
	@ sp needed
	ldmfd	sp!, {r4, fp, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA7238:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7238-.LLSDACSB7238
.LLSDACSB7238:
	.uleb128 .LEHB60-.LFB7238
	.uleb128 .LEHE60-.LEHB60
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB61-.LFB7238
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L495-.LFB7238
	.uleb128 0
	.uleb128 .LEHB62-.LFB7238
	.uleb128 .LEHE62-.LEHB62
	.uleb128 0
	.uleb128 0
.LLSDACSE7238:
	.section	.text._ZN7cvflann7anyimpl14big_any_policyISsE5cloneEPKPvPS3_,"axG",%progbits,_ZN7cvflann7anyimpl14big_any_policyISsE5cloneEPKPvPS3_,comdat
	.fnend
	.size	_ZN7cvflann7anyimpl14big_any_policyISsE5cloneEPKPvPS3_, .-_ZN7cvflann7anyimpl14big_any_policyISsE5cloneEPKPvPS3_
	.section	.text._ZN7cvflann7anyimpl14big_any_policyISsE4moveEPKPvPS3_,"axG",%progbits,_ZN7cvflann7anyimpl14big_any_policyISsE4moveEPKPvPS3_,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl14big_any_policyISsE4moveEPKPvPS3_
	.type	_ZN7cvflann7anyimpl14big_any_policyISsE4moveEPKPvPS3_, %function
_ZN7cvflann7anyimpl14big_any_policyISsE4moveEPKPvPS3_:
	.fnstart
.LFB7239:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZNSsD1Ev
	ldr	r3, [fp, #-16]
	ldr	r2, [r3]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNSsaSERKSs
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZN7cvflann7anyimpl14big_any_policyISsE4moveEPKPvPS3_, .-_ZN7cvflann7anyimpl14big_any_policyISsE4moveEPKPvPS3_
	.section	.text._ZN7cvflann7anyimpl14big_any_policyISsE9get_valueEPPv,"axG",%progbits,_ZN7cvflann7anyimpl14big_any_policyISsE9get_valueEPPv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl14big_any_policyISsE9get_valueEPPv
	.type	_ZN7cvflann7anyimpl14big_any_policyISsE9get_valueEPPv, %function
_ZN7cvflann7anyimpl14big_any_policyISsE9get_valueEPPv:
	.fnstart
.LFB7240:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl14big_any_policyISsE9get_valueEPPv, .-_ZN7cvflann7anyimpl14big_any_policyISsE9get_valueEPPv
	.section	.text._ZN7cvflann7anyimpl21typed_base_any_policyISsE8get_sizeEv,"axG",%progbits,_ZN7cvflann7anyimpl21typed_base_any_policyISsE8get_sizeEv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl21typed_base_any_policyISsE8get_sizeEv
	.type	_ZN7cvflann7anyimpl21typed_base_any_policyISsE8get_sizeEv, %function
_ZN7cvflann7anyimpl21typed_base_any_policyISsE8get_sizeEv:
	.fnstart
.LFB7241:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	mov	r3, #4
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl21typed_base_any_policyISsE8get_sizeEv, .-_ZN7cvflann7anyimpl21typed_base_any_policyISsE8get_sizeEv
	.section	.text._ZN7cvflann7anyimpl21typed_base_any_policyISsE4typeEv,"axG",%progbits,_ZN7cvflann7anyimpl21typed_base_any_policyISsE4typeEv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl21typed_base_any_policyISsE4typeEv
	.type	_ZN7cvflann7anyimpl21typed_base_any_policyISsE4typeEv, %function
_ZN7cvflann7anyimpl21typed_base_any_policyISsE4typeEv:
	.fnstart
.LFB7242:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, .L504
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L505:
	.align	2
.L504:
	.word	_ZTISs
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl21typed_base_any_policyISsE4typeEv, .-_ZN7cvflann7anyimpl21typed_base_any_policyISsE4typeEv
	.section	.text._ZN7cvflann7anyimpl14big_any_policyISsE5printERSoPKPv,"axG",%progbits,_ZN7cvflann7anyimpl14big_any_policyISsE5printERSoPKPv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl14big_any_policyISsE5printERSoPKPv
	.type	_ZN7cvflann7anyimpl14big_any_policyISsE5printERSoPKPv, %function
_ZN7cvflann7anyimpl14big_any_policyISsE5printERSoPKPv:
	.fnstart
.LFB7243:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	ldr	r0, [fp, #-12]
	mov	r1, r3
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZN7cvflann7anyimpl14big_any_policyISsE5printERSoPKPv, .-_ZN7cvflann7anyimpl14big_any_policyISsE5printERSoPKPv
	.section	.text._ZN7cvflann7anyimpl16small_any_policyIjE13static_deleteEPPv,"axG",%progbits,_ZN7cvflann7anyimpl16small_any_policyIjE13static_deleteEPPv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl16small_any_policyIjE13static_deleteEPPv
	.type	_ZN7cvflann7anyimpl16small_any_policyIjE13static_deleteEPPv, %function
_ZN7cvflann7anyimpl16small_any_policyIjE13static_deleteEPPv:
	.fnstart
.LFB7244:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl16small_any_policyIjE13static_deleteEPPv, .-_ZN7cvflann7anyimpl16small_any_policyIjE13static_deleteEPPv
	.section	.text._ZN7cvflann7anyimpl16small_any_policyIjE15copy_from_valueEPKvPPv,"axG",%progbits,_ZN7cvflann7anyimpl16small_any_policyIjE15copy_from_valueEPKvPPv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl16small_any_policyIjE15copy_from_valueEPKvPPv
	.type	_ZN7cvflann7anyimpl16small_any_policyIjE15copy_from_valueEPKvPPv, %function
_ZN7cvflann7anyimpl16small_any_policyIjE15copy_from_valueEPKvPPv:
	.fnstart
.LFB7245:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-16]
	mov	r0, #4
	mov	r1, r3
	bl	_ZnwjPv
	mov	r3, r0
	cmp	r3, #0
	beq	.L508
	ldr	r2, [fp, #-12]
	ldr	r2, [r2]
	str	r2, [r3]
.L508:
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl16small_any_policyIjE15copy_from_valueEPKvPPv, .-_ZN7cvflann7anyimpl16small_any_policyIjE15copy_from_valueEPKvPPv
	.section	.text._ZN7cvflann7anyimpl16small_any_policyIjE5cloneEPKPvPS3_,"axG",%progbits,_ZN7cvflann7anyimpl16small_any_policyIjE5cloneEPKPvPS3_,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl16small_any_policyIjE5cloneEPKPvPS3_
	.type	_ZN7cvflann7anyimpl16small_any_policyIjE5cloneEPKPvPS3_, %function
_ZN7cvflann7anyimpl16small_any_policyIjE5cloneEPKPvPS3_:
	.fnstart
.LFB7246:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	ldr	r2, [r3]
	ldr	r3, [fp, #-16]
	str	r2, [r3]
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl16small_any_policyIjE5cloneEPKPvPS3_, .-_ZN7cvflann7anyimpl16small_any_policyIjE5cloneEPKPvPS3_
	.section	.text._ZN7cvflann7anyimpl16small_any_policyIjE4moveEPKPvPS3_,"axG",%progbits,_ZN7cvflann7anyimpl16small_any_policyIjE4moveEPKPvPS3_,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl16small_any_policyIjE4moveEPKPvPS3_
	.type	_ZN7cvflann7anyimpl16small_any_policyIjE4moveEPKPvPS3_, %function
_ZN7cvflann7anyimpl16small_any_policyIjE4moveEPKPvPS3_:
	.fnstart
.LFB7247:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	ldr	r2, [r3]
	ldr	r3, [fp, #-16]
	str	r2, [r3]
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl16small_any_policyIjE4moveEPKPvPS3_, .-_ZN7cvflann7anyimpl16small_any_policyIjE4moveEPKPvPS3_
	.section	.text._ZN7cvflann7anyimpl16small_any_policyIjE9get_valueEPPv,"axG",%progbits,_ZN7cvflann7anyimpl16small_any_policyIjE9get_valueEPPv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl16small_any_policyIjE9get_valueEPPv
	.type	_ZN7cvflann7anyimpl16small_any_policyIjE9get_valueEPPv, %function
_ZN7cvflann7anyimpl16small_any_policyIjE9get_valueEPPv:
	.fnstart
.LFB7248:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-12]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl16small_any_policyIjE9get_valueEPPv, .-_ZN7cvflann7anyimpl16small_any_policyIjE9get_valueEPPv
	.section	.text._ZN7cvflann7anyimpl21typed_base_any_policyIjE8get_sizeEv,"axG",%progbits,_ZN7cvflann7anyimpl21typed_base_any_policyIjE8get_sizeEv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl21typed_base_any_policyIjE8get_sizeEv
	.type	_ZN7cvflann7anyimpl21typed_base_any_policyIjE8get_sizeEv, %function
_ZN7cvflann7anyimpl21typed_base_any_policyIjE8get_sizeEv:
	.fnstart
.LFB7249:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	mov	r3, #4
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl21typed_base_any_policyIjE8get_sizeEv, .-_ZN7cvflann7anyimpl21typed_base_any_policyIjE8get_sizeEv
	.section	.text._ZN7cvflann7anyimpl21typed_base_any_policyIjE4typeEv,"axG",%progbits,_ZN7cvflann7anyimpl21typed_base_any_policyIjE4typeEv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl21typed_base_any_policyIjE4typeEv
	.type	_ZN7cvflann7anyimpl21typed_base_any_policyIjE4typeEv, %function
_ZN7cvflann7anyimpl21typed_base_any_policyIjE4typeEv:
	.fnstart
.LFB7250:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, .L519
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L520:
	.align	2
.L519:
	.word	_ZTIj
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl21typed_base_any_policyIjE4typeEv, .-_ZN7cvflann7anyimpl21typed_base_any_policyIjE4typeEv
	.section	.text._ZN7cvflann7anyimpl16small_any_policyIjE5printERSoPKPv,"axG",%progbits,_ZN7cvflann7anyimpl16small_any_policyIjE5printERSoPKPv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl16small_any_policyIjE5printERSoPKPv
	.type	_ZN7cvflann7anyimpl16small_any_policyIjE5printERSoPKPv, %function
_ZN7cvflann7anyimpl16small_any_policyIjE5printERSoPKPv:
	.fnstart
.LFB7251:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	ldr	r0, [fp, #-12]
	mov	r1, r3
	bl	_ZNSolsEj
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZN7cvflann7anyimpl16small_any_policyIjE5printERSoPKPv, .-_ZN7cvflann7anyimpl16small_any_policyIjE5printERSoPKPv
	.section	.text._ZN7cvflann7anyimpl16small_any_policyIbE13static_deleteEPPv,"axG",%progbits,_ZN7cvflann7anyimpl16small_any_policyIbE13static_deleteEPPv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl16small_any_policyIbE13static_deleteEPPv
	.type	_ZN7cvflann7anyimpl16small_any_policyIbE13static_deleteEPPv, %function
_ZN7cvflann7anyimpl16small_any_policyIbE13static_deleteEPPv:
	.fnstart
.LFB7252:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl16small_any_policyIbE13static_deleteEPPv, .-_ZN7cvflann7anyimpl16small_any_policyIbE13static_deleteEPPv
	.section	.text._ZN7cvflann7anyimpl16small_any_policyIbE15copy_from_valueEPKvPPv,"axG",%progbits,_ZN7cvflann7anyimpl16small_any_policyIbE15copy_from_valueEPKvPPv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl16small_any_policyIbE15copy_from_valueEPKvPPv
	.type	_ZN7cvflann7anyimpl16small_any_policyIbE15copy_from_valueEPKvPPv, %function
_ZN7cvflann7anyimpl16small_any_policyIbE15copy_from_valueEPKvPPv:
	.fnstart
.LFB7253:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-16]
	mov	r0, #1
	mov	r1, r3
	bl	_ZnwjPv
	mov	r3, r0
	cmp	r3, #0
	beq	.L523
	ldr	r2, [fp, #-12]
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
.L523:
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl16small_any_policyIbE15copy_from_valueEPKvPPv, .-_ZN7cvflann7anyimpl16small_any_policyIbE15copy_from_valueEPKvPPv
	.section	.text._ZN7cvflann7anyimpl16small_any_policyIbE5cloneEPKPvPS3_,"axG",%progbits,_ZN7cvflann7anyimpl16small_any_policyIbE5cloneEPKPvPS3_,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl16small_any_policyIbE5cloneEPKPvPS3_
	.type	_ZN7cvflann7anyimpl16small_any_policyIbE5cloneEPKPvPS3_, %function
_ZN7cvflann7anyimpl16small_any_policyIbE5cloneEPKPvPS3_:
	.fnstart
.LFB7254:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	ldr	r2, [r3]
	ldr	r3, [fp, #-16]
	str	r2, [r3]
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl16small_any_policyIbE5cloneEPKPvPS3_, .-_ZN7cvflann7anyimpl16small_any_policyIbE5cloneEPKPvPS3_
	.section	.text._ZN7cvflann7anyimpl16small_any_policyIbE4moveEPKPvPS3_,"axG",%progbits,_ZN7cvflann7anyimpl16small_any_policyIbE4moveEPKPvPS3_,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl16small_any_policyIbE4moveEPKPvPS3_
	.type	_ZN7cvflann7anyimpl16small_any_policyIbE4moveEPKPvPS3_, %function
_ZN7cvflann7anyimpl16small_any_policyIbE4moveEPKPvPS3_:
	.fnstart
.LFB7255:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	ldr	r2, [r3]
	ldr	r3, [fp, #-16]
	str	r2, [r3]
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl16small_any_policyIbE4moveEPKPvPS3_, .-_ZN7cvflann7anyimpl16small_any_policyIbE4moveEPKPvPS3_
	.section	.text._ZN7cvflann7anyimpl16small_any_policyIbE9get_valueEPPv,"axG",%progbits,_ZN7cvflann7anyimpl16small_any_policyIbE9get_valueEPPv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl16small_any_policyIbE9get_valueEPPv
	.type	_ZN7cvflann7anyimpl16small_any_policyIbE9get_valueEPPv, %function
_ZN7cvflann7anyimpl16small_any_policyIbE9get_valueEPPv:
	.fnstart
.LFB7256:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-12]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl16small_any_policyIbE9get_valueEPPv, .-_ZN7cvflann7anyimpl16small_any_policyIbE9get_valueEPPv
	.section	.text._ZN7cvflann7anyimpl21typed_base_any_policyIbE8get_sizeEv,"axG",%progbits,_ZN7cvflann7anyimpl21typed_base_any_policyIbE8get_sizeEv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl21typed_base_any_policyIbE8get_sizeEv
	.type	_ZN7cvflann7anyimpl21typed_base_any_policyIbE8get_sizeEv, %function
_ZN7cvflann7anyimpl21typed_base_any_policyIbE8get_sizeEv:
	.fnstart
.LFB7257:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	mov	r3, #1
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl21typed_base_any_policyIbE8get_sizeEv, .-_ZN7cvflann7anyimpl21typed_base_any_policyIbE8get_sizeEv
	.section	.text._ZN7cvflann7anyimpl21typed_base_any_policyIbE4typeEv,"axG",%progbits,_ZN7cvflann7anyimpl21typed_base_any_policyIbE4typeEv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl21typed_base_any_policyIbE4typeEv
	.type	_ZN7cvflann7anyimpl21typed_base_any_policyIbE4typeEv, %function
_ZN7cvflann7anyimpl21typed_base_any_policyIbE4typeEv:
	.fnstart
.LFB7258:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, .L534
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L535:
	.align	2
.L534:
	.word	_ZTIb
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl21typed_base_any_policyIbE4typeEv, .-_ZN7cvflann7anyimpl21typed_base_any_policyIbE4typeEv
	.section	.text._ZN7cvflann7anyimpl16small_any_policyIbE5printERSoPKPv,"axG",%progbits,_ZN7cvflann7anyimpl16small_any_policyIbE5printERSoPKPv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl16small_any_policyIbE5printERSoPKPv
	.type	_ZN7cvflann7anyimpl16small_any_policyIbE5printERSoPKPv, %function
_ZN7cvflann7anyimpl16small_any_policyIbE5printERSoPKPv:
	.fnstart
.LFB7259:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r0, [fp, #-12]
	mov	r1, r3
	bl	_ZNSolsEb
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZN7cvflann7anyimpl16small_any_policyIbE5printERSoPKPv, .-_ZN7cvflann7anyimpl16small_any_policyIbE5printERSoPKPv
	.section	.text._ZN7cvflann7anyimpl16small_any_policyIfE13static_deleteEPPv,"axG",%progbits,_ZN7cvflann7anyimpl16small_any_policyIfE13static_deleteEPPv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl16small_any_policyIfE13static_deleteEPPv
	.type	_ZN7cvflann7anyimpl16small_any_policyIfE13static_deleteEPPv, %function
_ZN7cvflann7anyimpl16small_any_policyIfE13static_deleteEPPv:
	.fnstart
.LFB7260:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl16small_any_policyIfE13static_deleteEPPv, .-_ZN7cvflann7anyimpl16small_any_policyIfE13static_deleteEPPv
	.section	.text._ZN7cvflann7anyimpl16small_any_policyIfE15copy_from_valueEPKvPPv,"axG",%progbits,_ZN7cvflann7anyimpl16small_any_policyIfE15copy_from_valueEPKvPPv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl16small_any_policyIfE15copy_from_valueEPKvPPv
	.type	_ZN7cvflann7anyimpl16small_any_policyIfE15copy_from_valueEPKvPPv, %function
_ZN7cvflann7anyimpl16small_any_policyIfE15copy_from_valueEPKvPPv:
	.fnstart
.LFB7261:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-16]
	mov	r0, #4
	mov	r1, r3
	bl	_ZnwjPv
	mov	r3, r0
	cmp	r3, #0
	beq	.L538
	ldr	r2, [fp, #-12]
	ldr	r2, [r2]	@ float
	str	r2, [r3]	@ float
.L538:
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl16small_any_policyIfE15copy_from_valueEPKvPPv, .-_ZN7cvflann7anyimpl16small_any_policyIfE15copy_from_valueEPKvPPv
	.section	.text._ZN7cvflann7anyimpl16small_any_policyIfE5cloneEPKPvPS3_,"axG",%progbits,_ZN7cvflann7anyimpl16small_any_policyIfE5cloneEPKPvPS3_,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl16small_any_policyIfE5cloneEPKPvPS3_
	.type	_ZN7cvflann7anyimpl16small_any_policyIfE5cloneEPKPvPS3_, %function
_ZN7cvflann7anyimpl16small_any_policyIfE5cloneEPKPvPS3_:
	.fnstart
.LFB7262:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	ldr	r2, [r3]
	ldr	r3, [fp, #-16]
	str	r2, [r3]
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl16small_any_policyIfE5cloneEPKPvPS3_, .-_ZN7cvflann7anyimpl16small_any_policyIfE5cloneEPKPvPS3_
	.section	.text._ZN7cvflann7anyimpl16small_any_policyIfE4moveEPKPvPS3_,"axG",%progbits,_ZN7cvflann7anyimpl16small_any_policyIfE4moveEPKPvPS3_,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl16small_any_policyIfE4moveEPKPvPS3_
	.type	_ZN7cvflann7anyimpl16small_any_policyIfE4moveEPKPvPS3_, %function
_ZN7cvflann7anyimpl16small_any_policyIfE4moveEPKPvPS3_:
	.fnstart
.LFB7263:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	ldr	r2, [r3]
	ldr	r3, [fp, #-16]
	str	r2, [r3]
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl16small_any_policyIfE4moveEPKPvPS3_, .-_ZN7cvflann7anyimpl16small_any_policyIfE4moveEPKPvPS3_
	.section	.text._ZN7cvflann7anyimpl16small_any_policyIfE9get_valueEPPv,"axG",%progbits,_ZN7cvflann7anyimpl16small_any_policyIfE9get_valueEPPv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl16small_any_policyIfE9get_valueEPPv
	.type	_ZN7cvflann7anyimpl16small_any_policyIfE9get_valueEPPv, %function
_ZN7cvflann7anyimpl16small_any_policyIfE9get_valueEPPv:
	.fnstart
.LFB7264:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-12]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl16small_any_policyIfE9get_valueEPPv, .-_ZN7cvflann7anyimpl16small_any_policyIfE9get_valueEPPv
	.section	.text._ZN7cvflann7anyimpl21typed_base_any_policyIfE8get_sizeEv,"axG",%progbits,_ZN7cvflann7anyimpl21typed_base_any_policyIfE8get_sizeEv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl21typed_base_any_policyIfE8get_sizeEv
	.type	_ZN7cvflann7anyimpl21typed_base_any_policyIfE8get_sizeEv, %function
_ZN7cvflann7anyimpl21typed_base_any_policyIfE8get_sizeEv:
	.fnstart
.LFB7265:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	mov	r3, #4
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl21typed_base_any_policyIfE8get_sizeEv, .-_ZN7cvflann7anyimpl21typed_base_any_policyIfE8get_sizeEv
	.section	.text._ZN7cvflann7anyimpl21typed_base_any_policyIfE4typeEv,"axG",%progbits,_ZN7cvflann7anyimpl21typed_base_any_policyIfE4typeEv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl21typed_base_any_policyIfE4typeEv
	.type	_ZN7cvflann7anyimpl21typed_base_any_policyIfE4typeEv, %function
_ZN7cvflann7anyimpl21typed_base_any_policyIfE4typeEv:
	.fnstart
.LFB7266:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, .L549
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L550:
	.align	2
.L549:
	.word	_ZTIf
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl21typed_base_any_policyIfE4typeEv, .-_ZN7cvflann7anyimpl21typed_base_any_policyIfE4typeEv
	.section	.text._ZN7cvflann7anyimpl16small_any_policyIfE5printERSoPKPv,"axG",%progbits,_ZN7cvflann7anyimpl16small_any_policyIfE5printERSoPKPv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl16small_any_policyIfE5printERSoPKPv
	.type	_ZN7cvflann7anyimpl16small_any_policyIfE5printERSoPKPv, %function
_ZN7cvflann7anyimpl16small_any_policyIfE5printERSoPKPv:
	.fnstart
.LFB7267:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-16]
	flds	s15, [r3]
	ldr	r0, [fp, #-12]
	fcpys	s0, s15
	bl	_ZNSolsEf
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZN7cvflann7anyimpl16small_any_policyIfE5printERSoPKPv, .-_ZN7cvflann7anyimpl16small_any_policyIfE5printERSoPKPv
	.section	.text._ZN7cvflann7anyimpl16small_any_policyIiE13static_deleteEPPv,"axG",%progbits,_ZN7cvflann7anyimpl16small_any_policyIiE13static_deleteEPPv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl16small_any_policyIiE13static_deleteEPPv
	.type	_ZN7cvflann7anyimpl16small_any_policyIiE13static_deleteEPPv, %function
_ZN7cvflann7anyimpl16small_any_policyIiE13static_deleteEPPv:
	.fnstart
.LFB7268:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl16small_any_policyIiE13static_deleteEPPv, .-_ZN7cvflann7anyimpl16small_any_policyIiE13static_deleteEPPv
	.section	.text._ZN7cvflann7anyimpl16small_any_policyIiE15copy_from_valueEPKvPPv,"axG",%progbits,_ZN7cvflann7anyimpl16small_any_policyIiE15copy_from_valueEPKvPPv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl16small_any_policyIiE15copy_from_valueEPKvPPv
	.type	_ZN7cvflann7anyimpl16small_any_policyIiE15copy_from_valueEPKvPPv, %function
_ZN7cvflann7anyimpl16small_any_policyIiE15copy_from_valueEPKvPPv:
	.fnstart
.LFB7269:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-16]
	mov	r0, #4
	mov	r1, r3
	bl	_ZnwjPv
	mov	r3, r0
	cmp	r3, #0
	beq	.L553
	ldr	r2, [fp, #-12]
	ldr	r2, [r2]
	str	r2, [r3]
.L553:
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl16small_any_policyIiE15copy_from_valueEPKvPPv, .-_ZN7cvflann7anyimpl16small_any_policyIiE15copy_from_valueEPKvPPv
	.section	.text._ZN7cvflann7anyimpl16small_any_policyIiE5cloneEPKPvPS3_,"axG",%progbits,_ZN7cvflann7anyimpl16small_any_policyIiE5cloneEPKPvPS3_,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl16small_any_policyIiE5cloneEPKPvPS3_
	.type	_ZN7cvflann7anyimpl16small_any_policyIiE5cloneEPKPvPS3_, %function
_ZN7cvflann7anyimpl16small_any_policyIiE5cloneEPKPvPS3_:
	.fnstart
.LFB7270:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	ldr	r2, [r3]
	ldr	r3, [fp, #-16]
	str	r2, [r3]
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl16small_any_policyIiE5cloneEPKPvPS3_, .-_ZN7cvflann7anyimpl16small_any_policyIiE5cloneEPKPvPS3_
	.section	.text._ZN7cvflann7anyimpl16small_any_policyIiE4moveEPKPvPS3_,"axG",%progbits,_ZN7cvflann7anyimpl16small_any_policyIiE4moveEPKPvPS3_,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl16small_any_policyIiE4moveEPKPvPS3_
	.type	_ZN7cvflann7anyimpl16small_any_policyIiE4moveEPKPvPS3_, %function
_ZN7cvflann7anyimpl16small_any_policyIiE4moveEPKPvPS3_:
	.fnstart
.LFB7271:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	ldr	r2, [r3]
	ldr	r3, [fp, #-16]
	str	r2, [r3]
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl16small_any_policyIiE4moveEPKPvPS3_, .-_ZN7cvflann7anyimpl16small_any_policyIiE4moveEPKPvPS3_
	.section	.text._ZN7cvflann7anyimpl16small_any_policyIiE9get_valueEPPv,"axG",%progbits,_ZN7cvflann7anyimpl16small_any_policyIiE9get_valueEPPv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl16small_any_policyIiE9get_valueEPPv
	.type	_ZN7cvflann7anyimpl16small_any_policyIiE9get_valueEPPv, %function
_ZN7cvflann7anyimpl16small_any_policyIiE9get_valueEPPv:
	.fnstart
.LFB7272:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-12]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl16small_any_policyIiE9get_valueEPPv, .-_ZN7cvflann7anyimpl16small_any_policyIiE9get_valueEPPv
	.section	.text._ZN7cvflann7anyimpl21typed_base_any_policyIiE8get_sizeEv,"axG",%progbits,_ZN7cvflann7anyimpl21typed_base_any_policyIiE8get_sizeEv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl21typed_base_any_policyIiE8get_sizeEv
	.type	_ZN7cvflann7anyimpl21typed_base_any_policyIiE8get_sizeEv, %function
_ZN7cvflann7anyimpl21typed_base_any_policyIiE8get_sizeEv:
	.fnstart
.LFB7273:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	mov	r3, #4
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl21typed_base_any_policyIiE8get_sizeEv, .-_ZN7cvflann7anyimpl21typed_base_any_policyIiE8get_sizeEv
	.section	.text._ZN7cvflann7anyimpl21typed_base_any_policyIiE4typeEv,"axG",%progbits,_ZN7cvflann7anyimpl21typed_base_any_policyIiE4typeEv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl21typed_base_any_policyIiE4typeEv
	.type	_ZN7cvflann7anyimpl21typed_base_any_policyIiE4typeEv, %function
_ZN7cvflann7anyimpl21typed_base_any_policyIiE4typeEv:
	.fnstart
.LFB7274:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, .L564
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L565:
	.align	2
.L564:
	.word	_ZTIi
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl21typed_base_any_policyIiE4typeEv, .-_ZN7cvflann7anyimpl21typed_base_any_policyIiE4typeEv
	.section	.text._ZN7cvflann7anyimpl16small_any_policyIiE5printERSoPKPv,"axG",%progbits,_ZN7cvflann7anyimpl16small_any_policyIiE5printERSoPKPv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl16small_any_policyIiE5printERSoPKPv
	.type	_ZN7cvflann7anyimpl16small_any_policyIiE5printERSoPKPv, %function
_ZN7cvflann7anyimpl16small_any_policyIiE5printERSoPKPv:
	.fnstart
.LFB7275:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	ldr	r0, [fp, #-12]
	mov	r1, r3
	bl	_ZNSolsEi
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZN7cvflann7anyimpl16small_any_policyIiE5printERSoPKPv, .-_ZN7cvflann7anyimpl16small_any_policyIiE5printERSoPKPv
	.section	.text._ZN7cvflann7anyimpl16small_any_policyIPKcE13static_deleteEPPv,"axG",%progbits,_ZN7cvflann7anyimpl16small_any_policyIPKcE13static_deleteEPPv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl16small_any_policyIPKcE13static_deleteEPPv
	.type	_ZN7cvflann7anyimpl16small_any_policyIPKcE13static_deleteEPPv, %function
_ZN7cvflann7anyimpl16small_any_policyIPKcE13static_deleteEPPv:
	.fnstart
.LFB7276:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl16small_any_policyIPKcE13static_deleteEPPv, .-_ZN7cvflann7anyimpl16small_any_policyIPKcE13static_deleteEPPv
	.section	.text._ZN7cvflann7anyimpl16small_any_policyIPKcE15copy_from_valueEPKvPPv,"axG",%progbits,_ZN7cvflann7anyimpl16small_any_policyIPKcE15copy_from_valueEPKvPPv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl16small_any_policyIPKcE15copy_from_valueEPKvPPv
	.type	_ZN7cvflann7anyimpl16small_any_policyIPKcE15copy_from_valueEPKvPPv, %function
_ZN7cvflann7anyimpl16small_any_policyIPKcE15copy_from_valueEPKvPPv:
	.fnstart
.LFB7277:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-16]
	mov	r0, #4
	mov	r1, r3
	bl	_ZnwjPv
	mov	r3, r0
	cmp	r3, #0
	beq	.L568
	ldr	r2, [fp, #-12]
	ldr	r2, [r2]
	str	r2, [r3]
.L568:
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl16small_any_policyIPKcE15copy_from_valueEPKvPPv, .-_ZN7cvflann7anyimpl16small_any_policyIPKcE15copy_from_valueEPKvPPv
	.section	.text._ZN7cvflann7anyimpl16small_any_policyIPKcE5cloneEPKPvPS5_,"axG",%progbits,_ZN7cvflann7anyimpl16small_any_policyIPKcE5cloneEPKPvPS5_,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl16small_any_policyIPKcE5cloneEPKPvPS5_
	.type	_ZN7cvflann7anyimpl16small_any_policyIPKcE5cloneEPKPvPS5_, %function
_ZN7cvflann7anyimpl16small_any_policyIPKcE5cloneEPKPvPS5_:
	.fnstart
.LFB7278:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	ldr	r2, [r3]
	ldr	r3, [fp, #-16]
	str	r2, [r3]
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl16small_any_policyIPKcE5cloneEPKPvPS5_, .-_ZN7cvflann7anyimpl16small_any_policyIPKcE5cloneEPKPvPS5_
	.section	.text._ZN7cvflann7anyimpl16small_any_policyIPKcE4moveEPKPvPS5_,"axG",%progbits,_ZN7cvflann7anyimpl16small_any_policyIPKcE4moveEPKPvPS5_,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl16small_any_policyIPKcE4moveEPKPvPS5_
	.type	_ZN7cvflann7anyimpl16small_any_policyIPKcE4moveEPKPvPS5_, %function
_ZN7cvflann7anyimpl16small_any_policyIPKcE4moveEPKPvPS5_:
	.fnstart
.LFB7279:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	ldr	r2, [r3]
	ldr	r3, [fp, #-16]
	str	r2, [r3]
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl16small_any_policyIPKcE4moveEPKPvPS5_, .-_ZN7cvflann7anyimpl16small_any_policyIPKcE4moveEPKPvPS5_
	.section	.text._ZN7cvflann7anyimpl16small_any_policyIPKcE9get_valueEPPv,"axG",%progbits,_ZN7cvflann7anyimpl16small_any_policyIPKcE9get_valueEPPv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl16small_any_policyIPKcE9get_valueEPPv
	.type	_ZN7cvflann7anyimpl16small_any_policyIPKcE9get_valueEPPv, %function
_ZN7cvflann7anyimpl16small_any_policyIPKcE9get_valueEPPv:
	.fnstart
.LFB7280:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-12]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl16small_any_policyIPKcE9get_valueEPPv, .-_ZN7cvflann7anyimpl16small_any_policyIPKcE9get_valueEPPv
	.section	.text._ZN7cvflann7anyimpl21typed_base_any_policyIPKcE8get_sizeEv,"axG",%progbits,_ZN7cvflann7anyimpl21typed_base_any_policyIPKcE8get_sizeEv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl21typed_base_any_policyIPKcE8get_sizeEv
	.type	_ZN7cvflann7anyimpl21typed_base_any_policyIPKcE8get_sizeEv, %function
_ZN7cvflann7anyimpl21typed_base_any_policyIPKcE8get_sizeEv:
	.fnstart
.LFB7281:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	mov	r3, #4
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl21typed_base_any_policyIPKcE8get_sizeEv, .-_ZN7cvflann7anyimpl21typed_base_any_policyIPKcE8get_sizeEv
	.section	.text._ZN7cvflann7anyimpl21typed_base_any_policyIPKcE4typeEv,"axG",%progbits,_ZN7cvflann7anyimpl21typed_base_any_policyIPKcE4typeEv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl21typed_base_any_policyIPKcE4typeEv
	.type	_ZN7cvflann7anyimpl21typed_base_any_policyIPKcE4typeEv, %function
_ZN7cvflann7anyimpl21typed_base_any_policyIPKcE4typeEv:
	.fnstart
.LFB7282:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, .L579
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L580:
	.align	2
.L579:
	.word	_ZTIPKc
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl21typed_base_any_policyIPKcE4typeEv, .-_ZN7cvflann7anyimpl21typed_base_any_policyIPKcE4typeEv
	.section	.text._ZN7cvflann7anyimpl16small_any_policyIPKcE5printERSoPKPv,"axG",%progbits,_ZN7cvflann7anyimpl16small_any_policyIPKcE5printERSoPKPv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl16small_any_policyIPKcE5printERSoPKPv
	.type	_ZN7cvflann7anyimpl16small_any_policyIPKcE5printERSoPKPv, %function
_ZN7cvflann7anyimpl16small_any_policyIPKcE5printERSoPKPv:
	.fnstart
.LFB7283:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	ldr	r0, [fp, #-12]
	mov	r1, r3
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZN7cvflann7anyimpl16small_any_policyIPKcE5printERSoPKPv, .-_ZN7cvflann7anyimpl16small_any_policyIPKcE5printERSoPKPv
	.section	.text._ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE13static_deleteEPPv,"axG",%progbits,_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE13static_deleteEPPv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE13static_deleteEPPv
	.type	_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE13static_deleteEPPv, %function
_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE13static_deleteEPPv:
	.fnstart
.LFB7284:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L583
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZdlPv
.L583:
	ldr	r3, [fp, #-12]
	mov	r2, #0
	str	r2, [r3]
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE13static_deleteEPPv, .-_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE13static_deleteEPPv
	.section	.text._ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE15copy_from_valueEPKvPPv,"axG",%progbits,_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE15copy_from_valueEPKvPPv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE15copy_from_valueEPKvPPv
	.type	_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE15copy_from_valueEPKvPPv, %function
_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE15copy_from_valueEPKvPPv:
	.fnstart
.LFB7285:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	mov	r0, #1
	bl	_Znwj
	mov	r2, r0
	ldr	r3, [fp, #-16]
	str	r2, [r3]
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE15copy_from_valueEPKvPPv, .-_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE15copy_from_valueEPKvPPv
	.section	.text._ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE5cloneEPKPvPS4_,"axG",%progbits,_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE5cloneEPKPvPS4_,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE5cloneEPKPvPS4_
	.type	_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE5cloneEPKPvPS4_, %function
_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE5cloneEPKPvPS4_:
	.fnstart
.LFB7286:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	mov	r0, #1
	bl	_Znwj
	mov	r2, r0
	ldr	r3, [fp, #-16]
	str	r2, [r3]
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE5cloneEPKPvPS4_, .-_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE5cloneEPKPvPS4_
	.section	.text._ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE4moveEPKPvPS4_,"axG",%progbits,_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE4moveEPKPvPS4_,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE4moveEPKPvPS4_
	.type	_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE4moveEPKPvPS4_, %function
_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE4moveEPKPvPS4_:
	.fnstart
.LFB7287:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE4moveEPKPvPS4_, .-_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE4moveEPKPvPS4_
	.section	.text._ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE9get_valueEPPv,"axG",%progbits,_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE9get_valueEPPv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE9get_valueEPPv
	.type	_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE9get_valueEPPv, %function
_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE9get_valueEPPv:
	.fnstart
.LFB7288:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE9get_valueEPPv, .-_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE9get_valueEPPv
	.section	.text._ZN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEE8get_sizeEv,"axG",%progbits,_ZN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEE8get_sizeEv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEE8get_sizeEv
	.type	_ZN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEE8get_sizeEv, %function
_ZN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEE8get_sizeEv:
	.fnstart
.LFB7289:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	mov	r3, #1
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEE8get_sizeEv, .-_ZN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEE8get_sizeEv
	.section	.text._ZN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEE4typeEv,"axG",%progbits,_ZN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEE4typeEv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEE4typeEv
	.type	_ZN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEE4typeEv, %function
_ZN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEE4typeEv:
	.fnstart
.LFB7290:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, .L593
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L594:
	.align	2
.L593:
	.word	_ZTIN7cvflann7anyimpl9empty_anyE
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEE4typeEv, .-_ZN7cvflann7anyimpl21typed_base_any_policyINS0_9empty_anyEE4typeEv
	.section	.text._ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE5printERSoPKPv,"axG",%progbits,_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE5printERSoPKPv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE5printERSoPKPv
	.type	_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE5printERSoPKPv, %function
_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE5printERSoPKPv:
	.fnstart
.LFB7291:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	ldr	r0, [fp, #-12]
	mov	r1, r3
	bl	_ZN7cvflann7anyimpllsERSoRKNS0_9empty_anyE
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE5printERSoPKPv, .-_ZN7cvflann7anyimpl14big_any_policyINS0_9empty_anyEE5printERSoPKPv
	.section	.text._ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE13static_deleteEPPv,"axG",%progbits,_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE13static_deleteEPPv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE13static_deleteEPPv
	.type	_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE13static_deleteEPPv, %function
_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE13static_deleteEPPv:
	.fnstart
.LFB7292:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L597
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZdlPv
.L597:
	ldr	r3, [fp, #-12]
	mov	r2, #0
	str	r2, [r3]
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE13static_deleteEPPv, .-_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE13static_deleteEPPv
	.section	.text._ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE15copy_from_valueEPKvPPv,"axG",%progbits,_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE15copy_from_valueEPKvPPv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE15copy_from_valueEPKvPPv
	.type	_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE15copy_from_valueEPKvPPv, %function
_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE15copy_from_valueEPKvPPv:
	.fnstart
.LFB7293:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	mov	r0, #4
	bl	_Znwj
	mov	r3, r0
	ldr	r2, [fp, #-12]
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r2, [fp, #-16]
	str	r3, [r2]
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE15copy_from_valueEPKvPPv, .-_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE15copy_from_valueEPKvPPv
	.section	.text._ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE5cloneEPKPvPS4_,"axG",%progbits,_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE5cloneEPKPvPS4_,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE5cloneEPKPvPS4_
	.type	_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE5cloneEPKPvPS4_, %function
_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE5cloneEPKPvPS4_:
	.fnstart
.LFB7294:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	mov	r0, #4
	bl	_Znwj
	mov	r3, r0
	ldr	r2, [fp, #-12]
	ldr	r2, [r2]
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r2, [fp, #-16]
	str	r3, [r2]
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE5cloneEPKPvPS4_, .-_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE5cloneEPKPvPS4_
	.section	.text._ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE4moveEPKPvPS4_,"axG",%progbits,_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE4moveEPKPvPS4_,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE4moveEPKPvPS4_
	.type	_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE4moveEPKPvPS4_, %function
_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE4moveEPKPvPS4_:
	.fnstart
.LFB7295:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	ldr	r2, [fp, #-12]
	ldr	r2, [r2]
	ldr	r2, [r2]
	str	r2, [r3]
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE4moveEPKPvPS4_, .-_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE4moveEPKPvPS4_
	.section	.text._ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE9get_valueEPPv,"axG",%progbits,_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE9get_valueEPPv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE9get_valueEPPv
	.type	_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE9get_valueEPPv, %function
_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE9get_valueEPPv:
	.fnstart
.LFB7296:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE9get_valueEPPv, .-_ZN7cvflann7anyimpl14big_any_policyINS_17flann_algorithm_tEE9get_valueEPPv
	.section	.text._ZN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEE8get_sizeEv,"axG",%progbits,_ZN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEE8get_sizeEv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEE8get_sizeEv
	.type	_ZN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEE8get_sizeEv, %function
_ZN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEE8get_sizeEv:
	.fnstart
.LFB7297:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	mov	r3, #4
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEE8get_sizeEv, .-_ZN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEE8get_sizeEv
	.section	.text._ZN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEE4typeEv,"axG",%progbits,_ZN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEE4typeEv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEE4typeEv
	.type	_ZN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEE4typeEv, %function
_ZN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEE4typeEv:
	.fnstart
.LFB7298:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, .L607
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L608:
	.align	2
.L607:
	.word	_ZTIN7cvflann17flann_algorithm_tE
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEE4typeEv, .-_ZN7cvflann7anyimpl21typed_base_any_policyINS_17flann_algorithm_tEE4typeEv
	.section	.text._ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE13static_deleteEPPv,"axG",%progbits,_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE13static_deleteEPPv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE13static_deleteEPPv
	.type	_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE13static_deleteEPPv, %function
_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE13static_deleteEPPv:
	.fnstart
.LFB7299:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L610
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZdlPv
.L610:
	ldr	r3, [fp, #-12]
	mov	r2, #0
	str	r2, [r3]
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE13static_deleteEPPv, .-_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE13static_deleteEPPv
	.section	.text._ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE15copy_from_valueEPKvPPv,"axG",%progbits,_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE15copy_from_valueEPKvPPv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE15copy_from_valueEPKvPPv
	.type	_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE15copy_from_valueEPKvPPv, %function
_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE15copy_from_valueEPKvPPv:
	.fnstart
.LFB7300:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	mov	r0, #4
	bl	_Znwj
	mov	r3, r0
	ldr	r2, [fp, #-12]
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r2, [fp, #-16]
	str	r3, [r2]
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE15copy_from_valueEPKvPPv, .-_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE15copy_from_valueEPKvPPv
	.section	.text._ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE5cloneEPKPvPS4_,"axG",%progbits,_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE5cloneEPKPvPS4_,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE5cloneEPKPvPS4_
	.type	_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE5cloneEPKPvPS4_, %function
_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE5cloneEPKPvPS4_:
	.fnstart
.LFB7301:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	mov	r0, #4
	bl	_Znwj
	mov	r3, r0
	ldr	r2, [fp, #-12]
	ldr	r2, [r2]
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r2, [fp, #-16]
	str	r3, [r2]
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE5cloneEPKPvPS4_, .-_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE5cloneEPKPvPS4_
	.section	.text._ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE4moveEPKPvPS4_,"axG",%progbits,_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE4moveEPKPvPS4_,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE4moveEPKPvPS4_
	.type	_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE4moveEPKPvPS4_, %function
_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE4moveEPKPvPS4_:
	.fnstart
.LFB7302:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	ldr	r2, [fp, #-12]
	ldr	r2, [r2]
	ldr	r2, [r2]
	str	r2, [r3]
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE4moveEPKPvPS4_, .-_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE4moveEPKPvPS4_
	.section	.text._ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE9get_valueEPPv,"axG",%progbits,_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE9get_valueEPPv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE9get_valueEPPv
	.type	_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE9get_valueEPPv, %function
_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE9get_valueEPPv:
	.fnstart
.LFB7303:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE9get_valueEPPv, .-_ZN7cvflann7anyimpl14big_any_policyINS_20flann_centers_init_tEE9get_valueEPPv
	.section	.text._ZN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEE8get_sizeEv,"axG",%progbits,_ZN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEE8get_sizeEv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEE8get_sizeEv
	.type	_ZN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEE8get_sizeEv, %function
_ZN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEE8get_sizeEv:
	.fnstart
.LFB7304:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	mov	r3, #4
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEE8get_sizeEv, .-_ZN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEE8get_sizeEv
	.section	.text._ZN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEE4typeEv,"axG",%progbits,_ZN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEE4typeEv,comdat
	.align	2
	.weak	_ZN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEE4typeEv
	.type	_ZN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEE4typeEv, %function
_ZN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEE4typeEv:
	.fnstart
.LFB7305:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, .L620
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L621:
	.align	2
.L620:
	.word	_ZTIN7cvflann20flann_centers_init_tE
	.cantunwind
	.fnend
	.size	_ZN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEE4typeEv, .-_ZN7cvflann7anyimpl21typed_base_any_policyINS_20flann_centers_init_tEE4typeEv
	.weak	_ZTSN7cvflann20flann_centers_init_tE
	.section	.rodata._ZTSN7cvflann20flann_centers_init_tE,"aG",%progbits,_ZTSN7cvflann20flann_centers_init_tE,comdat
	.align	2
	.type	_ZTSN7cvflann20flann_centers_init_tE, %object
	.size	_ZTSN7cvflann20flann_centers_init_tE, 33
_ZTSN7cvflann20flann_centers_init_tE:
	.ascii	"N7cvflann20flann_centers_init_tE\000"
	.weak	_ZTIN7cvflann20flann_centers_init_tE
	.section	.rodata._ZTIN7cvflann20flann_centers_init_tE,"aG",%progbits,_ZTIN7cvflann20flann_centers_init_tE,comdat
	.align	2
	.type	_ZTIN7cvflann20flann_centers_init_tE, %object
	.size	_ZTIN7cvflann20flann_centers_init_tE, 8
_ZTIN7cvflann20flann_centers_init_tE:
	.word	_ZTVN10__cxxabiv116__enum_type_infoE+8
	.word	_ZTSN7cvflann20flann_centers_init_tE
	.weak	_ZTSN7cvflann17flann_algorithm_tE
	.section	.rodata._ZTSN7cvflann17flann_algorithm_tE,"aG",%progbits,_ZTSN7cvflann17flann_algorithm_tE,comdat
	.align	2
	.type	_ZTSN7cvflann17flann_algorithm_tE, %object
	.size	_ZTSN7cvflann17flann_algorithm_tE, 30
_ZTSN7cvflann17flann_algorithm_tE:
	.ascii	"N7cvflann17flann_algorithm_tE\000"
	.weak	_ZTIN7cvflann17flann_algorithm_tE
	.section	.rodata._ZTIN7cvflann17flann_algorithm_tE,"aG",%progbits,_ZTIN7cvflann17flann_algorithm_tE,comdat
	.align	2
	.type	_ZTIN7cvflann17flann_algorithm_tE, %object
	.size	_ZTIN7cvflann17flann_algorithm_tE, 8
_ZTIN7cvflann17flann_algorithm_tE:
	.word	_ZTVN10__cxxabiv116__enum_type_infoE+8
	.word	_ZTSN7cvflann17flann_algorithm_tE
	.weak	_ZTSSs
	.section	.rodata._ZTSSs,"aG",%progbits,_ZTSSs,comdat
	.align	2
	.type	_ZTSSs, %object
	.size	_ZTSSs, 3
_ZTSSs:
	.ascii	"Ss\000"
	.weak	_ZTISs
	.section	.rodata._ZTISs,"aG",%progbits,_ZTISs,comdat
	.align	2
	.type	_ZTISs, %object
	.size	_ZTISs, 8
_ZTISs:
	.word	_ZTVN10__cxxabiv117__class_type_infoE+8
	.word	_ZTSSs
	.text
	.align	2
	.type	_GLOBAL__sub_I__Z19GetObjetosAtributosRfS_Pc, %function
_GLOBAL__sub_I__Z19GetObjetosAtributosRfS_Pc:
	.fnstart
.LFB7308:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	mov	r0, #1
	ldr	r1, .L623
	bl	_Z41__static_initialization_and_destruction_0ii
	ldmfd	sp!, {fp, pc}
.L624:
	.align	2
.L623:
	.word	65535
	.cantunwind
	.fnend
	.size	_GLOBAL__sub_I__Z19GetObjetosAtributosRfS_Pc, .-_GLOBAL__sub_I__Z19GetObjetosAtributosRfS_Pc
	.section	.init_array,"aw"
	.align	2
	.word	_GLOBAL__sub_I__Z19GetObjetosAtributosRfS_Pc
	.section	.rodata
	.align	2
	.type	_ZZL18__gthread_active_pvE20__gthread_active_ptr, %object
	.size	_ZZL18__gthread_active_pvE20__gthread_active_ptr, 4
_ZZL18__gthread_active_pvE20__gthread_active_ptr:
	.word	_ZL28__gthrw___pthread_key_createPjPFvPvE
	.weakref	_ZL28__gthrw___pthread_key_createPjPFvPvE,__pthread_key_create
	.hidden	__dso_handle
	.ident	"GCC: (Raspbian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",%progbits
