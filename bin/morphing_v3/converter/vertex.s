	.file	"vertex.bc"
	.section	.debug_frame,"",@progbits
.Lsection_debug_frame:
	.section	.debug_info,"",@progbits
.Lsection_info:
	.section	.debug_abbrev,"",@progbits
.Lsection_abbrev:
	.section	.debug_aranges,"",@progbits
	.section	.debug_macinfo,"",@progbits
	.section	.debug_line,"",@progbits
.Lsection_line:
	.section	.debug_loc,"",@progbits
	.section	.debug_pubnames,"",@progbits
	.section	.debug_pubtypes,"",@progbits
	.section	.debug_str,"",@progbits
.Lsection_str:
	.section	.debug_ranges,"",@progbits
.Ldebug_range:
	.section	.debug_loc,"",@progbits
.Lsection_debug_loc:
	.text
.Ltext_begin:
	.data
	.section	.rodata.cst4,"aM",@progbits,4
	.align	2
.LCPI0_0:                               # constant pool float
	.long	1065353216              # float 1.000000e+00
.LCPI0_1:                               # constant pool float
	.long	3223431131              # float -2.525870e+00
.LCPI0_2:                               # constant pool float
	.long	1050253722              # float 3.000000e-01
.LCPI0_3:                               # constant pool float
	.long	0                       # float 0.000000e+00
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI0_4:                               # constant pool <4 x float>
	.long	1077936128              # float 3.000000e+00
	.long	1077936128              # float 3.000000e+00
	.long	1077936128              # float 3.000000e+00
	.long	1077936128              # float 3.000000e+00
	.text
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
.Leh_func_begin0:
# BB#0:                                 # %entry
	NOP 9
	NOP 9
	STV r0, 4(1), <1> set_mark_4
	NOP 9
	ST r1, -496(1)
	NOP 9
	ADDI r1, r1, -496
	NOP 9
.Ltmp0:
	NOP 9
	NOP 9
	STV r14, 464(1), <1> set_mark_4
	NOP 9
	NOP 9
	NOP 9
	STV r25, 468(1), <1> set_mark_4
	NOP 9
	NOP 9
	NOP 9
	STV r26, 472(1), <1> set_mark_4
	NOP 9
	NOP 9
	NOP 9
	STV r27, 476(1), <1> set_mark_4
	NOP 9
	NOP 9
	NOP 9
	STV r28, 480(1), <1> set_mark_4
	NOP 9
	NOP 9
	NOP 9
	STV r29, 484(1), <1> set_mark_4
	NOP 9
	NOP 9
	NOP 9
	STV r30, 488(1), <1> set_mark_4
	NOP 9
	ADDI r0, r1, 208 set_mark
	NOP 9
	ADD R3, R0, R0 set_mark_2
	NOP 9
	NOP 9
	NOP 9
	STV R20, 0(R3), <4> set_mark
	NOP 9
	mfspr 4, 256
	NOP 9
	NOP 9
	STV r4, 11(1), <1> set_mark_4
	NOP 9
	mtspr 256, 4
	ADDI r30, r0, shaderr.u.0.1@ha
	NOP 9
	BL OpenGLES.Start               # size:4
	NOP 9
	ADDI r29, r1, 32
	NOP 9
	NOP 9
	NOP 9
	STV r29, 16(1), <1> set_mark_4
	NOP 9
	BL OpenGLES.LoadAttribute4.rm_Vertex.0 # size:4
	NOP 9
	LDV r4.1000, shaderr.u.0.1@l(30) set_mark_4
	NOP 9
	ADD R3, R0, R29
	NOP 9
	NOP 9
	NOP 9
	STV R16, 0(R3) set_mark_3       # size:4
	NOP 9
	ADDI r5, r0, 1
	NOP 9
	BEQ 4, 5, 3, <1>
	NOP 9
	B .LBB0_2
	NOP 9
# BB#1:                                 # %L1.T
	ADDI r30, r0, temp_var1@ha      # size:4
	NOP 9
	ADDI r29, r0, temp_var1@l       # size:4
	NOP 9
	BL OpenGLES.LoadAttribute2.texcoord.0 # size:4
	NOP 9
	ADD R3, R30, R29
	NOP 9
	NOP 9
	NOP 9
	STV R16, 0(R3) set_mark_3       # size:4
	NOP 9
	B .LBB0_4
	NOP 9
.LBB0_2:                                # %L1.F
	LDV r30.1000, 16(1) set_mark_4  # size:4
	NOP 9
	ADD 29.1000, R0, R30
	NOP 9
	LDV R29.1111, 0(29), <4>        # size:4
	NOP 9
	ADDI r28, r1, 31
	NOP 9
	BL OpenGLES.CallRegister        # size:4
	NOP 9
	MVR r27.1111, r16.xyzw, <4>     # size:4
	NOP 9
	ADDI r26, r0, .LCPI0_0@ha
	NOP 9
	BL OpenGLES.CallRegister        # size:4
	NOP 9
	MVR r17.1111, r16.xyzw, <4>     # size:4
	NOP 9
	ADDI r25, r0, timeflag.u.0.1@ha
	NOP 9
	MVR r15.1111, r29.xyzw, <4>     # size:4
	NOP 9
	MVR r16.1111, r27.xyzw, <4>     # size:4
	NOP 9
	BL OpenGLES.Normalize.vec4      # size:4
	NOP 9
	ADD R3, R0, R28
	NOP 9
	NOP 9
	NOP 9
	STV R16, 0(R3) set_mark_3       # size:4
	NOP 9
	LDV R3.1000, .LCPI0_0@l(26) set_mark_4
	NOP 9
	MVR R29.1000, R3.xyzw, <4>
	NOP 9
	LDV R3.1000, timeflag.u.0.1@l(25) set_mark_4
	NOP 9
	MVR R4.1000, R3.xyzw, <4>
	NOP 9
	LDV R3.0100, 31(1) set_mark_4
	NOP 9
	MVR R5.1000, R3.yyzw, <4>       # size:4
	NOP 9
	ADDI r6, r1, 30
	NOP 9
	SUBF r4, r5, r4
	NOP 9
	NOP 9
	NOP 9
	STV r29.1000, 30(1), <1> set_mark_4 # size:4
	NOP 9
	ADDI r5, r1, 29
	NOP 9
	NOP 9
	NOP 9
	STV r4.1000, 29(1), <1> set_mark_4 # size:4
	NOP 9
	ADD 6.1000, R0, R6
	NOP 9
	LDV R6.1111, 0(6), <4>          # size:4
	NOP 9
	ADD 5.1000, R0, R5
	NOP 9
	LDV R5.1111, 0(5), <4>          # size:4
	NOP 9
	ADD R3, R0, R30
	NOP 9
	NOP 9
	NOP 9
	STV R16, 0(R3) set_mark_3       # size:4
	NOP 9
	ADDI r7, r0, .LCPI0_1@ha
	NOP 9
	vsldoi 8, 16, 16, 12            # size:4
	NOP 9
	vsldoi 6, 8, 6, 4               # size:4
	NOP 9
	ADD R3, R0, R30
	NOP 9
	NOP 9
	NOP 9
	STV R6, 0(R3) set_mark_3        # size:4
	NOP 9
	vmrghw 5, 6, 5                  # size:4
	NOP 9
	vsldoi 5, 6, 5, 8               # size:4
	NOP 9
	vsldoi 5, 5, 5, 8               # size:4
	NOP 9
	ADD R3, R0, R30
	NOP 9
	NOP 9
	NOP 9
	STV R5, 0(R3) set_mark_3        # size:4
	NOP 9
	LDV R3.1000, .LCPI0_1@l(7) set_mark_4
	NOP 9
	MVR R5.1000, R3.xyzw, <4>
	NOP 9
	NOP 9
	NOP 9
	STV r5.1000, 15(1), <1> set_mark_4
	NOP 9
	BLTF 4, 5, 3, <1>
	NOP 9
	B .LBB0_4
	NOP 9
# BB#3:                                 # %L2.T
	ADD 30.1000, R0, R30
	NOP 9
	LDV R30.1111, 0(30), <4>        # size:4
	NOP 9
	ADDI r28, r1, 48
	NOP 9
	BL OpenGLES.LoadAttribute3.rm_Normal.0 # size:4
	NOP 9
	ADDI r5, r1, 25
	NOP 9
	ADD 27.1000, R0, R28
	NOP 9
	LDV R27.1111, 0(27), <4>        # size:4
	NOP 9
	ADDI r6, r1, 24
	NOP 9
	ADD R3, R0, R5
	NOP 9
	NOP 9
	NOP 9
	STV R16, 0(R3) set_mark_3       # size:4
	NOP 9
	ADD R3, R0, R6
	NOP 9
	NOP 9
	NOP 9
	STV R16, 0(R3) set_mark_3       # size:4
	NOP 9
	LDV R3.0100, 25(1) set_mark_4
	NOP 9
	MVR R26.1000, R3.yyzw, <4>      # size:4
	NOP 9
	LDV R3.1000, 24(1) set_mark_4
	NOP 9
	MVR R25.1000, R3.xyzw, <4>      # size:4
	NOP 9
	BL OpenGLES.CallRegister        # size:4
	NOP 9
	ADDI r0, r1, 14 set_mark
	NOP 9
	ADD R3, R0, R0 set_mark_2
	NOP 9
	NOP 9
	NOP 9
	STV R16, 0(R3), <4> set_mark
	NOP 9
	ADDI r14, r1, 21
	NOP 9
	NOP 9
	NOP 9
	STV r29.1000, 21(1), <1> set_mark_4 # size:4
	NOP 9
	ADDI r29, r1, 22
	NOP 9
	NOP 9
	NOP 9
	STV r26.1000, 22(1), <1> set_mark_4 # size:4
	NOP 9
	ADDI r26, r1, 23
	NOP 9
	NOP 9
	NOP 9
	STV r25.1000, 23(1), <1> set_mark_4 # size:4
	NOP 9
	BL OpenGLES.CallRegister        # size:4
	NOP 9
	MVR r17.1111, r16.xyzw, <4>     # size:4
	NOP 9
	ADD 5.1000, R0, R26
	NOP 9
	LDV R5.1111, 0(5), <4>          # size:4
	NOP 9
	ADD 6.1000, R0, R14
	NOP 9
	LDV R6.1111, 0(6), <4>          # size:4
	NOP 9
	ADD 7.1000, R0, R29
	NOP 9
	LDV R7.1111, 0(7), <4>          # size:4
	NOP 9
	vsldoi 5, 27, 5, 4              # size:4
	NOP 9
	vsldoi 29, 5, 5, 12             # size:4
	NOP 9
	vmrghw 5, 29, 7                 # size:4
	NOP 9
	vsldoi 5, 29, 5, 8              # size:4
	NOP 9
	vsldoi 27, 5, 5, 8              # size:4
	NOP 9
	vsldoi 5, 27, 27, 8             # size:4
	NOP 9
	vsldoi 5, 5, 6, 4               # size:4
	NOP 9
	vsldoi 26, 5, 5, 4              # size:4
	NOP 9
	ADDI r25, r1, 19
	NOP 9
	MVR r15.1111, r26.xyzw, <4>     # size:4
	NOP 9
	ADDI r0, r1, 14 set_mark        # size:4
	NOP 9
	ADD R16.1000, R0, R0 set_mark_2
	NOP 9
	LDV R16.1111, 0(16), <4>        # size:4
	NOP 9
	BL OpenGLES.Normalize.vec3      # size:4
	NOP 9
	ADDI r5, r1, 20
	NOP 9
	ADDI r6, r1, 27
	NOP 9
	ADD R3, R0, R25
	NOP 9
	NOP 9
	NOP 9
	STV R16, 0(R3) set_mark_3       # size:4
	NOP 9
	ADDI r7, r0, .LCPI0_2@ha
	NOP 9
	ADDI r8, r1, 26
	NOP 9
	LDV R3.1000, 15(1) set_mark_4
	NOP 9
	MVR R9.1000, R3.xyzw, <4>       # size:4
	NOP 9
	NOP 9
	NOP 9
	STV r9.1000, 26(1), <1> set_mark_4 # size:4
	NOP 9
	ADDI r9, r1, 28
	NOP 9
	ADD R3, R0, R5
	NOP 9
	NOP 9
	NOP 9
	STV R16, 0(R3) set_mark_3       # size:4
	NOP 9
	ADD R3, R0, R6
	NOP 9
	NOP 9
	NOP 9
	STV R30, 0(R3) set_mark_3       # size:4
	NOP 9
	ADD 5.1000, R0, R8
	NOP 9
	LDV R5.1111, 0(5), <4>          # size:4
	NOP 9
	LDV R3.1000, 19(1) set_mark_4
	NOP 9
	MVR R6.1000, R3.xyzw, <4>       # size:4
	NOP 9
	LDV R3.1000, .LCPI0_2@l(7) set_mark_4
	NOP 9
	MVR R7.1000, R3.xyzw, <4>
	NOP 9
	ADD R3, R0, R9
	NOP 9
	NOP 9
	NOP 9
	STV R30, 0(R3) set_mark_3       # size:4
	NOP 9
	LDV R3.0100, 20(1) set_mark_4
	NOP 9
	MVR R8.1000, R3.yyzw, <4>       # size:4
	NOP 9
	LDV R3.1000, 27(1) set_mark_4
	NOP 9
	MVR R9.1000, R3.xyzw, <4>       # size:4
	NOP 9
	MULF r6, r6, r7
	NOP 9
	vmrghw 5, 30, 5                 # size:4
	NOP 9
	vsldoi 5, 30, 5, 8              # size:4
	NOP 9
	vsldoi 5, 5, 5, 8               # size:4
	NOP 9
	LDV r4.1000, 16(1) set_mark_4   # size:4
	NOP 9
	ADD R3, R0, R4
	NOP 9
	NOP 9
	NOP 9
	STV R5, 0(R3) set_mark_3        # size:4
	NOP 9
	LDV R3.0010, 28(1) set_mark_4
	NOP 9
	MVR R10.1000, R3.zyzw, <4>      # size:4
	NOP 9
	MULF r7, r8, r7
	NOP 9
	ADDF r6, r9, r6
	NOP 9
	ADD R3, R0, R28
	NOP 9
	NOP 9
	NOP 9
	STV R29, 0(R3) set_mark_3       # size:4
	NOP 9
	ADDF r7, r10, r7
	NOP 9
	ADD R3, R0, R28
	NOP 9
	NOP 9
	NOP 9
	STV R27, 0(R3) set_mark_3       # size:4
	NOP 9
	ADDI r8, r1, 18
	NOP 9
	NOP 9
	NOP 9
	STV r6.1000, 18(1), <1> set_mark_4 # size:4
	NOP 9
	ADD 6.1000, R0, R8
	NOP 9
	LDV R6.1111, 0(6), <4>          # size:4
	NOP 9
	ADD R3, R0, R28
	NOP 9
	NOP 9
	NOP 9
	STV R26, 0(R3) set_mark_3       # size:4
	NOP 9
	ADDI r8, r1, 17
	NOP 9
	NOP 9
	NOP 9
	STV r7.1000, 17(1), <1> set_mark_4 # size:4
	NOP 9
	ADD 7.1000, R0, R8
	NOP 9
	LDV R7.1111, 0(7), <4>          # size:4
	NOP 9
	ADD R3, R0, R28
	NOP 9
	NOP 9
	NOP 9
	STV R16, 0(R3) set_mark_3       # size:4
	NOP 9
	vsldoi 5, 5, 6, 4               # size:4
	NOP 9
	vsldoi 5, 5, 5, 12              # size:4
	NOP 9
	ADD R3, R0, R4
	NOP 9
	NOP 9
	NOP 9
	STV R5, 0(R3) set_mark_3        # size:4
	NOP 9
	vsldoi 5, 5, 5, 8               # size:4
	NOP 9
	vsldoi 5, 5, 7, 4               # size:4
	NOP 9
	vsldoi 5, 5, 5, 4               # size:4
	NOP 9
	ADD R3, R0, R4
	NOP 9
	NOP 9
	NOP 9
	STV R5, 0(R3) set_mark_3        # size:4
	NOP 9
.LBB0_4:                                # %L1.E
	ADDI r4, r0, NormalMatrix.u.2.3@ha # size:3
	NOP 9
	ADDI r5, r0, NormalMatrix.u.2.3@l # size:3
	NOP 9
	ADDI r6, r0, NormalMatrix.u.1.3@ha # size:3
	NOP 9
	ADDI r7, r0, NormalMatrix.u.1.3@l # size:3
	NOP 9
	ADDI r8, r0, NormalMatrix.u.0.3@ha # size:3
	NOP 9
	ADDI r9, r0, NormalMatrix.u.0.3@l # size:3
	NOP 9
	ADD 30.1000, R4, R5
	NOP 9
	LDV R30.1111, 0(30), <4>        # size:3
	NOP 9
	ADD 29.1000, R6, R7
	NOP 9
	LDV R29.1111, 0(29), <4>        # size:3
	NOP 9
	ADD 28.1000, R8, R9
	NOP 9
	LDV R28.1111, 0(28), <4>        # size:3
	NOP 9
	ADDI r27, r0, light_Pos.u.0.1@ha # size:4
	NOP 9
	ADDI r26, r0, light_Pos.u.0.1@l # size:4
	NOP 9
	MVR r15.1111, r30.xyzw, <4>     # size:3
	NOP 9
	MVR r16.1111, r29.xyzw, <4>     # size:3
	NOP 9
	MVR r17.1111, r28.xyzw, <4>     # size:3
	NOP 9
	BL OpenGLES.ChangeMatrix3.1     # size:3
	NOP 9
	MVR r25.1111, r16.xyzw, <4>     # size:3
	NOP 9
	MVR r15.1111, r30.xyzw, <4>     # size:3
	NOP 9
	MVR r16.1111, r29.xyzw, <4>     # size:3
	NOP 9
	MVR r17.1111, r28.xyzw, <4>     # size:3
	NOP 9
	BL OpenGLES.ChangeMatrix3.2     # size:3
	NOP 9
	MVR r14.1111, r16.xyzw, <4>     # size:3
	NOP 9
	MVR r15.1111, r30.xyzw, <4>     # size:3
	NOP 9
	MVR r16.1111, r29.xyzw, <4>     # size:3
	NOP 9
	MVR r17.1111, r28.xyzw, <4>     # size:3
	NOP 9
	BL OpenGLES.ChangeMatrix3.3     # size:3
	NOP 9
	MVR r30.1111, r16.xyzw, <4>     # size:3
	NOP 9
	BL OpenGLES.LoadAttribute3.rm_Normal.0 # size:4
	NOP 9
	MVR r29.1111, r16.xyzw, <4>     # size:4
	NOP 9
	BL OpenGLES.CallRegister        # size:4
	NOP 9
	MVR r19.1111, r16.xyzw, <4>     # size:4
	NOP 9
	MVR r15.1111, r29.xyzw, <4>     # size:3
	NOP 9
	MVR r16.1111, r30.xyzw, <4>     # size:3
	NOP 9
	MVR r17.1111, r14.xyzw, <4>     # size:3
	NOP 9
	MVR r18.1111, r25.xyzw, <4>     # size:3
	NOP 9
	BL OpenGLES.VectorTimesMatrix3.5 # size:3
	NOP 9
	MVR r30.1111, r16.xyzw, <4>     # size:3
	NOP 9
	BL OpenGLES.CallRegister        # size:4
	NOP 9
	MVR r29.1111, r16.xyzw, <4>     # size:4
	NOP 9
	BL OpenGLES.CallRegister        # size:4
	NOP 9
	MVR r17.1111, r16.xyzw, <4>     # size:4
	NOP 9
	MVR r15.1111, r30.xyzw, <4>     # size:4
	NOP 9
	MVR r16.1111, r29.xyzw, <4>     # size:4
	NOP 9
	BL OpenGLES.Normalize.vec3      # size:4
	NOP 9
	ADDI r0, r1, 14 set_mark
	NOP 9
	ADD R3, R0, R0 set_mark_2
	NOP 9
	NOP 9
	NOP 9
	STV R16, 0(R3), <4> set_mark
	NOP 9
	ADD 30.1000, R27, R26
	NOP 9
	LDV R30.1111, 0(30), <4>        # size:4
	NOP 9
	BL OpenGLES.CallRegister        # size:4
	NOP 9
	MVR r29.1111, r16.xyzw, <4>     # size:4
	NOP 9
	ADDI r28, r0, .LCPI0_3@ha
	NOP 9
	BL OpenGLES.CallRegister        # size:4
	NOP 9
	MVR r17.1111, r16.xyzw, <4>     # size:4
	NOP 9
	LDV R3.1000, .LCPI0_3@l(28) set_mark_4
	NOP 9
	MVR R4.1000, R3.xyzw, <4>
	NOP 9
	NOP 9
	NOP 9
	STV r4.1000, 15(1), <1> set_mark_4
	NOP 9
	MVR r15.1111, r30.xyzw, <4>     # size:4
	NOP 9
	MVR r16.1111, r29.xyzw, <4>     # size:4
	NOP 9
	BL OpenGLES.Normalize.vec3      # size:4
	NOP 9
	ADDI r0, r1, 12 set_mark
	NOP 9
	ADD R3, R0, R0 set_mark_2
	NOP 9
	NOP 9
	NOP 9
	STV R16, 0(R3), <4> set_mark
	NOP 9
	ADDI r4, r0, eye_Pos.u.0.1@ha   # size:4
	NOP 9
	ADDI r6, r0, eye_Pos.u.0.1@l    # size:4
	NOP 9
	ADD 4.1000, R4, R6
	NOP 9
	LDV R4.1111, 0(4), <4>          # size:4
	NOP 9
	ADDF r30.1111, r30.xyzw, r4.xyzw <4> # size:4
	NOP 9
	BL OpenGLES.CallRegister        # size:4
	NOP 9
	MVR r29.1111, r16.xyzw, <4>     # size:4
	NOP 9
	ADDI r4, r1, 64
	NOP 9
	NOP 9
	NOP 9
	STV r4, 10(1), <1> set_mark_4
	NOP 9
	BL OpenGLES.CallRegister        # size:4
	NOP 9
	MVR r17.1111, r16.xyzw, <4>     # size:4
	NOP 9
	ADDI r28, r1, 80
	NOP 9
	MVR r15.1111, r30.xyzw, <4>     # size:4
	NOP 9
	MVR r16.1111, r29.xyzw, <4>     # size:4
	NOP 9
	BL OpenGLES.Normalize.vec3      # size:4
	NOP 9
	ADDI r0, r1, 9 set_mark
	NOP 9
	ADD R3, R0, R0 set_mark_2
	NOP 9
	NOP 9
	NOP 9
	STV R16, 0(R3), <4> set_mark
	NOP 9
	ADDI r6, r0, diffuse_light.u.0.1@ha # size:4
	NOP 9
	ADDI r7, r0, diffuse_light.u.0.1@l # size:4
	NOP 9
	ADD 30.1000, R6, R7
	NOP 9
	LDV R30.1111, 0(30), <4>        # size:4
	NOP 9
	ADDI r6, r0, diffuse_material.u.0.1@ha # size:4
	NOP 9
	ADDI r7, r0, diffuse_material.u.0.1@l # size:4
	NOP 9
	ADD 29.1000, R6, R7
	NOP 9
	LDV R29.1111, 0(29), <4>        # size:4
	NOP 9
	ADDI r6, r0, ambient_light.u.0.1@ha # size:4
	NOP 9
	ADDI r7, r0, ambient_light.u.0.1@l # size:4
	NOP 9
	ADD 27.1000, R6, R7
	NOP 9
	LDV R27.1111, 0(27), <4>        # size:4
	NOP 9
	ADDI r6, r0, ambient_material.u.0.1@ha # size:4
	NOP 9
	ADDI r7, r0, ambient_material.u.0.1@l # size:4
	NOP 9
	ADD 26.1000, R6, R7
	NOP 9
	LDV R26.1111, 0(26), <4>        # size:4
	NOP 9
	ADDI r6, r1, 96
	NOP 9
	NOP 9
	NOP 9
	STV r6, 13(1), <1> set_mark_4
	NOP 9
	XOR R25.1111, R25.xyzw, R25.xyzw, <4> # size:4
	NOP 9
	ADDI r7, r1, 112
	NOP 9
	NOP 9
	NOP 9
	STV r7, 8(1), <1> set_mark_4
	NOP 9
	BL OpenGLES.CallRegister        # size:4
	NOP 9
	MVR r14.1111, r16.xyzw, <4>     # size:4
	NOP 9
	MULF r3, r30.xyzw, r29.xyzw
	NOP 9
	ADDF r30, r3.xyzw, r25.xyzw     # size:4
	NOP 9
	MULF r3, r27.xyzw, r26.xyzw
	NOP 9
	ADDF r29, r3.xyzw, r25.xyzw     # size:4
	NOP 9
	ADDI r27, r1, 128
	NOP 9
	BL OpenGLES.CallRegister        # size:4
	NOP 9
	MVR r17.1111, r16.xyzw, <4>     # size:4
	NOP 9
	ADDI r26, r1, 144
	NOP 9
	ADDI r0, r1, 14 set_mark        # size:4
	NOP 9
	ADD R15.1000, R0, R0 set_mark_2
	NOP 9
	LDV R15.1111, 0(15), <4>        # size:4
	NOP 9
	MVR r16.1111, r14.xyzw, <4>     # size:4
	NOP 9
	BL OpenGLES.Normalize.vec3      # size:4
	NOP 9
	MVR r25.1111, r16.xyzw, <4>     # size:4
	NOP 9
	MVR r15.1111, r25.xyzw, <4>     # size:4
	NOP 9
	ADDI r0, r1, 12 set_mark        # size:4
	NOP 9
	ADD R16.1000, R0, R0 set_mark_2
	NOP 9
	LDV R16.1111, 0(16), <4>        # size:4
	NOP 9
	BL OpenGLES.Dot.vec3.vec3       # size:4
	NOP 9
	MVR r8.1111, r16.xyzw, <4>      # size:4
	NOP 9
	MVR r15.1111, r8.xyzw, <4>
	NOP 9
	LDV R3.1000, 15(1) set_mark_4
	NOP 9
	MVR R4.1000, R3.xyzw, <4>
	NOP 9
	MVR r16.1111, r4.xyzw, <4>
	NOP 9
	BL OpenGLES.Max.f.f
	NOP 9
	MVR r8.1111, r16.xyzw, <4>
	NOP 9
	ADDI r10, r0, temp_var2@l       # size:4
	NOP 9
	ADDI r9, r0, temp_var2@ha       # size:4
	NOP 9
	ADDI r0, r1, 14 set_mark        # size:4
	NOP 9
	ADD R11.1000, R0, R0 set_mark_2
	NOP 9
	LDV R11.1111, 0(11), <4>        # size:4
	NOP 9
	ADD R3, R9, R10
	NOP 9
	NOP 9
	NOP 9
	STV R11, 0(R3) set_mark_3       # size:4
	NOP 9
	ADDI r0, r1, 12 set_mark        # size:4
	NOP 9
	ADD R9.1000, R0, R0 set_mark_2
	NOP 9
	LDV R9.1111, 0(9), <4>          # size:4
	NOP 9
	LDV r4.1000, 10(1) set_mark_4   # size:4
	NOP 9
	ADD R3, R0, R4
	NOP 9
	NOP 9
	NOP 9
	STV R9, 0(R3) set_mark_3        # size:4
	NOP 9
	ADDI r0, r1, 9 set_mark         # size:4
	NOP 9
	ADD R4.1000, R0, R0 set_mark_2
	NOP 9
	LDV R4.1111, 0(4), <4>          # size:4
	NOP 9
	ADD R3, R0, R28
	NOP 9
	NOP 9
	NOP 9
	STV R4, 0(R3) set_mark_3        # size:4
	NOP 9
	LDV r6.1000, 13(1) set_mark_4   # size:4
	NOP 9
	ADD R3, R0, R6
	NOP 9
	NOP 9
	NOP 9
	STV R30, 0(R3) set_mark_3       # size:4
	NOP 9
	LDV r7.1000, 8(1) set_mark_4    # size:4
	NOP 9
	ADD R3, R0, R7
	NOP 9
	NOP 9
	NOP 9
	STV R29, 0(R3) set_mark_3       # size:4
	NOP 9
	ADD R3, R0, R27
	NOP 9
	NOP 9
	NOP 9
	STV R29, 0(R3) set_mark_3       # size:4
	NOP 9
	ADD R3, R0, R26
	NOP 9
	NOP 9
	NOP 9
	STV R25, 0(R3) set_mark_3       # size:4
	NOP 9
	NOP 9
	NOP 9
	STV r8.1000, 172(1), <1> set_mark_4
	NOP 9
	LDV R3.1000, 15(1) set_mark_4
	NOP 9
	MVR R4.1000, R3.xyzw, <4>
	NOP 9
	BGTF 8, 4, 3, <1>
	NOP 9
	B .LBB0_6
	NOP 9
# BB#5:                                 # %L3.T
	ADD 30.1000, R0, R28
	NOP 9
	LDV R30.1111, 0(30), <4>        # size:4
	NOP 9
	BL OpenGLES.CallRegister        # size:4
	NOP 9
	MVR r29.1111, r16.xyzw, <4>     # size:4
	NOP 9
	BL OpenGLES.CallRegister        # size:4
	NOP 9
	MVR r17.1111, r16.xyzw, <4>     # size:4
	NOP 9
	MVR r15.1111, r30.xyzw, <4>     # size:4
	NOP 9
	MVR r16.1111, r29.xyzw, <4>     # size:4
	NOP 9
	BL OpenGLES.Normalize.vec3      # size:4
	NOP 9
	MVR r30.1111, r16.xyzw, <4>     # size:4
	NOP 9
	ADD 15.1000, R0, R26
	NOP 9
	LDV R15.1111, 0(15), <4>        # size:4
	NOP 9
	ADDI r29, r0, specularExp.u.0.1@ha
	NOP 9
	BL OpenGLES.Dot.vec3.vec3       # size:4
	NOP 9
	MVR r4.1111, r16.xyzw, <4>      # size:4
	NOP 9
	ADDI r28, r0, specular_light.u.0.1@l # size:4
	NOP 9
	MVR r15.1111, r4.xyzw, <4>
	NOP 9
	LDV R3.1000, 15(1) set_mark_4
	NOP 9
	MVR R4.1000, R3.xyzw, <4>
	NOP 9
	MVR r16.1111, r4.xyzw, <4>
	NOP 9
	BL OpenGLES.Max.f.f
	NOP 9
	MVR r26.1111, r16.xyzw, <4>
	NOP 9
	LDV R3.1000, specularExp.u.0.1@l(29) set_mark_4
	NOP 9
	MVR R29.1000, R3.xyzw, <4>
	NOP 9
	ADDI r25, r0, specular_material.u.0.1@ha # size:4
	NOP 9
	ADDI r14, r0, specular_material.u.0.1@l # size:4
	NOP 9
	BL OpenGLES.CallRegister        # size:4
	NOP 9
	MVR r17.1111, r16.xyzw, <4>     # size:4
	NOP 9
	MVR r15.1111, r26.xyzw, <4>     # size:4
	NOP 9
	MVR r16.1111, r29.xyzw, <4>     # size:4
	NOP 9
	BL OpenGLES.Pow.f.f             # size:4
	NOP 9
	MVR r4.1111, r16.xyzw, <4>      # size:4
	NOP 9
	ADDI r6, r0, specular_light.u.0.1@ha # size:4
	NOP 9
	ADD 29.1000, R6, R28
	NOP 9
	LDV R29.1111, 0(29), <4>        # size:4
	NOP 9
	ADD 16.1000, R25, R14
	NOP 9
	LDV R16.1111, 0(16), <4>        # size:4
	NOP 9
	ADDI r28, r1, 176
	NOP 9
	MVR r15.1111, r4.xyzw, <4>      # size:4
	NOP 9
	BL OpenGLES.ScalarTimesVector   # size:4
	NOP 9
	ADD 4.1000, R0, R27
	NOP 9
	LDV R4.1111, 0(4), <4>          # size:4
	NOP 9
	LDV R3.1000, 172(1) set_mark_4
	NOP 9
	MVR R6.1000, R3.xyzw, <4>
	NOP 9
	LDV r7.1000, 13(1) set_mark_4   # size:4
	NOP 9
	ADD 7.1000, R0, R7
	NOP 9
	LDV R7.1111, 0(7), <4>          # size:4
	NOP 9
	MULF r3, r29.xyzw, r16.xyzw
	NOP 9
	ADDF r29, r3.xyzw, r4.xyzw      # size:4
	NOP 9
	MVR r15.1111, r6.xyzw, <4>      # size:4
	NOP 9
	MVR r16.1111, r7.xyzw, <4>      # size:4
	NOP 9
	BL OpenGLES.ScalarTimesVector   # size:4
	NOP 9
	ADD R3, R0, R28
	NOP 9
	NOP 9
	NOP 9
	STV R30, 0(R3) set_mark_3       # size:4
	NOP 9
	NOP 9
	NOP 9
	STV r26.1000, 204(1), <1> set_mark_4
	NOP 9
	ADD R3, R0, R27
	NOP 9
	NOP 9
	NOP 9
	STV R29, 0(R3) set_mark_3       # size:4
	NOP 9
	ADDF r4.1111, r29.xyzw, r16.xyzw <4> # size:4
	NOP 9
	ADD R3, R0, R27
	NOP 9
	NOP 9
	NOP 9
	STV R4, 0(R3) set_mark_3        # size:4
	NOP 9
.LBB0_6:                                # %L3.E
	ADD 30.1000, R0, R27
	NOP 9
	LDV R30.1111, 0(30), <4>        # size:4
	NOP 9
	ADDI r29, r0, .LCPI0_4@ha
	NOP 9
	BL OpenGLES.CallRegister        # size:4
	NOP 9
	MVR r28.1111, r16.xyzw, <4>     # size:4
	NOP 9
	ADDI r4, r0, .LCPI0_4@l
	NOP 9
	ADD 29.1000, R29, R4
	NOP 9
	LDV R29.1111, 0(29), <4>        # size:4
	NOP 9
	BL OpenGLES.CallRegister        # size:4
	NOP 9
	MVR r18.1111, r16.xyzw, <4>     # size:4
	NOP 9
	ADDI r27, r0, ModelViewMatrix.u.3.4@ha # size:4
	NOP 9
	ADDI r26, r0, ModelViewMatrix.u.3.4@l # size:4
	NOP 9
	MVR r15.1111, r30.xyzw, <4>     # size:4
	NOP 9
	MVR r16.1111, r29.xyzw, <4>     # size:4
	NOP 9
	MVR r17.1111, r28.xyzw, <4>     # size:4
	NOP 9
	BL OpenGLES.FloatDiv4           # size:4
	NOP 9
	ADDI r0, r1, 15 set_mark
	NOP 9
	ADD R3, R0, R0 set_mark_2
	NOP 9
	NOP 9
	NOP 9
	STV R16, 0(R3), <4> set_mark
	NOP 9
	ADDI r4, r0, ModelViewMatrix.u.2.4@ha # size:4
	NOP 9
	ADDI r6, r0, ModelViewMatrix.u.2.4@l # size:4
	NOP 9
	ADDI r7, r0, ModelViewMatrix.u.1.4@ha # size:4
	NOP 9
	ADDI r8, r0, ModelViewMatrix.u.1.4@l # size:4
	NOP 9
	ADDI r9, r0, ModelViewMatrix.u.0.4@ha # size:4
	NOP 9
	ADDI r10, r0, ModelViewMatrix.u.0.4@l # size:4
	NOP 9
	ADD 30.1000, R27, R26
	NOP 9
	LDV R30.1111, 0(30), <4>        # size:4
	NOP 9
	ADD 29.1000, R4, R6
	NOP 9
	LDV R29.1111, 0(29), <4>        # size:4
	NOP 9
	ADD 28.1000, R7, R8
	NOP 9
	LDV R28.1111, 0(28), <4>        # size:4
	NOP 9
	ADD 27.1000, R9, R10
	NOP 9
	LDV R27.1111, 0(27), <4>        # size:4
	NOP 9
	MVR r15.1111, r30.xyzw, <4>     # size:4
	NOP 9
	MVR r16.1111, r29.xyzw, <4>     # size:4
	NOP 9
	MVR r17.1111, r28.xyzw, <4>     # size:4
	NOP 9
	MVR r18.1111, r27.xyzw, <4>     # size:4
	NOP 9
	BL OpenGLES.ChangeMatrix4.1     # size:4
	NOP 9
	ADDI r0, r1, 14 set_mark
	NOP 9
	ADD R3, R0, R0 set_mark_2
	NOP 9
	NOP 9
	NOP 9
	STV R16, 0(R3), <4> set_mark
	NOP 9
	MVR r15.1111, r30.xyzw, <4>     # size:4
	NOP 9
	MVR r16.1111, r29.xyzw, <4>     # size:4
	NOP 9
	MVR r17.1111, r28.xyzw, <4>     # size:4
	NOP 9
	MVR r18.1111, r27.xyzw, <4>     # size:4
	NOP 9
	BL OpenGLES.ChangeMatrix4.2     # size:4
	NOP 9
	ADDI r0, r1, 13 set_mark
	NOP 9
	ADD R3, R0, R0 set_mark_2
	NOP 9
	NOP 9
	NOP 9
	STV R16, 0(R3), <4> set_mark
	NOP 9
	MVR r15.1111, r30.xyzw, <4>     # size:4
	NOP 9
	MVR r16.1111, r29.xyzw, <4>     # size:4
	NOP 9
	MVR r17.1111, r28.xyzw, <4>     # size:4
	NOP 9
	MVR r18.1111, r27.xyzw, <4>     # size:4
	NOP 9
	BL OpenGLES.ChangeMatrix4.3     # size:4
	NOP 9
	ADDI r0, r1, 12 set_mark
	NOP 9
	ADD R3, R0, R0 set_mark_2
	NOP 9
	NOP 9
	NOP 9
	STV R16, 0(R3), <4> set_mark
	NOP 9
	ADDI r26, r0, ProjectionMatrix.u.2.4@l # size:4
	NOP 9
	MVR r15.1111, r30.xyzw, <4>     # size:4
	NOP 9
	MVR r16.1111, r29.xyzw, <4>     # size:4
	NOP 9
	MVR r17.1111, r28.xyzw, <4>     # size:4
	NOP 9
	MVR r18.1111, r27.xyzw, <4>     # size:4
	NOP 9
	BL OpenGLES.ChangeMatrix4.4     # size:4
	NOP 9
	ADDI r0, r1, 10 set_mark
	NOP 9
	ADD R3, R0, R0 set_mark_2
	NOP 9
	NOP 9
	NOP 9
	STV R16, 0(R3), <4> set_mark
	NOP 9
	LDV r4.1000, 16(1) set_mark_4   # size:4
	NOP 9
	ADD 4.1000, R0, R4
	NOP 9
	LDV R4.1111, 0(4), <4>          # size:4
	NOP 9
	ADDI r0, r1, 16 set_mark
	NOP 9
	ADD R3, R0, R0 set_mark_2
	NOP 9
	NOP 9
	NOP 9
	STV R4, 0(R3), <4> set_mark
	NOP 9
	ADDI r30, r0, ProjectionMatrix.u.1.4@ha # size:4
	NOP 9
	ADDI r29, r0, ProjectionMatrix.u.1.4@l # size:4
	NOP 9
	BL OpenGLES.CallRegister        # size:4
	NOP 9
	MVR r20.1111, r16.xyzw, <4>     # size:4
	NOP 9
	ADDI r4, r0, ProjectionMatrix.u.0.4@ha # size:4
	NOP 9
	ADDI r6, r0, ProjectionMatrix.u.0.4@l # size:4
	NOP 9
	ADDI r7, r0, ProjectionMatrix.u.3.4@ha # size:4
	NOP 9
	ADDI r8, r0, ProjectionMatrix.u.3.4@l # size:4
	NOP 9
	ADD 28.1000, R7, R8
	NOP 9
	LDV R28.1111, 0(28), <4>        # size:4
	NOP 9
	ADDI r7, r0, ProjectionMatrix.u.2.4@ha # size:4
	NOP 9
	ADD 27.1000, R7, R26
	NOP 9
	LDV R27.1111, 0(27), <4>        # size:4
	NOP 9
	ADD 30.1000, R30, R29
	NOP 9
	LDV R30.1111, 0(30), <4>        # size:4
	NOP 9
	ADD 29.1000, R4, R6
	NOP 9
	LDV R29.1111, 0(29), <4>        # size:4
	NOP 9
	MVR r15.1111, r28.xyzw, <4>     # size:4
	NOP 9
	MVR r16.1111, r27.xyzw, <4>     # size:4
	NOP 9
	MVR r17.1111, r30.xyzw, <4>     # size:4
	NOP 9
	MVR r18.1111, r29.xyzw, <4>     # size:4
	NOP 9
	BL OpenGLES.ChangeMatrix4.1     # size:4
	NOP 9
	MVR r26.1111, r16.xyzw, <4>     # size:4
	NOP 9
	MVR r15.1111, r28.xyzw, <4>     # size:4
	NOP 9
	MVR r16.1111, r27.xyzw, <4>     # size:4
	NOP 9
	MVR r17.1111, r30.xyzw, <4>     # size:4
	NOP 9
	MVR r18.1111, r29.xyzw, <4>     # size:4
	NOP 9
	BL OpenGLES.ChangeMatrix4.2     # size:4
	NOP 9
	MVR r25.1111, r16.xyzw, <4>     # size:4
	NOP 9
	MVR r15.1111, r28.xyzw, <4>     # size:4
	NOP 9
	MVR r16.1111, r27.xyzw, <4>     # size:4
	NOP 9
	MVR r17.1111, r30.xyzw, <4>     # size:4
	NOP 9
	MVR r18.1111, r29.xyzw, <4>     # size:4
	NOP 9
	BL OpenGLES.ChangeMatrix4.3     # size:4
	NOP 9
	MVR r14.1111, r16.xyzw, <4>     # size:4
	NOP 9
	MVR r15.1111, r28.xyzw, <4>     # size:4
	NOP 9
	MVR r16.1111, r27.xyzw, <4>     # size:4
	NOP 9
	MVR r17.1111, r30.xyzw, <4>     # size:4
	NOP 9
	MVR r18.1111, r29.xyzw, <4>     # size:4
	NOP 9
	BL OpenGLES.ChangeMatrix4.4     # size:4
	NOP 9
	MVR r30.1111, r16.xyzw, <4>     # size:4
	NOP 9
	ADDI r0, r1, 16 set_mark        # size:4
	NOP 9
	ADD R15.1000, R0, R0 set_mark_2
	NOP 9
	LDV R15.1111, 0(15), <4>        # size:4
	NOP 9
	ADDI r0, r1, 10 set_mark        # size:4
	NOP 9
	ADD R16.1000, R0, R0 set_mark_2
	NOP 9
	LDV R16.1111, 0(16), <4>        # size:4
	NOP 9
	ADDI r0, r1, 12 set_mark        # size:4
	NOP 9
	ADD R17.1000, R0, R0 set_mark_2
	NOP 9
	LDV R17.1111, 0(17), <4>        # size:4
	NOP 9
	ADDI r0, r1, 13 set_mark        # size:4
	NOP 9
	ADD R18.1000, R0, R0 set_mark_2
	NOP 9
	LDV R18.1111, 0(18), <4>        # size:4
	NOP 9
	ADDI r0, r1, 14 set_mark        # size:4
	NOP 9
	ADD R19.1000, R0, R0 set_mark_2
	NOP 9
	LDV R19.1111, 0(19), <4>        # size:4
	NOP 9
	BL OpenGLES.VectorTimesMatrix4.6 # size:4
	NOP 9
	MVR r29.1111, r16.xyzw, <4>     # size:4
	NOP 9
	BL OpenGLES.CallRegister        # size:4
	NOP 9
	MVR r20.1111, r16.xyzw, <4>     # size:4
	NOP 9
	MVR r15.1111, r29.xyzw, <4>     # size:4
	NOP 9
	MVR r16.1111, r30.xyzw, <4>     # size:4
	NOP 9
	MVR r17.1111, r14.xyzw, <4>     # size:4
	NOP 9
	MVR r18.1111, r25.xyzw, <4>     # size:4
	NOP 9
	MVR r19.1111, r26.xyzw, <4>     # size:4
	NOP 9
	BL OpenGLES.VectorTimesMatrix4.6 # size:4
	NOP 9
	MVR r30.1111, r16.xyzw, <4>     # size:4
	NOP 9
	ADDI r0, r1, 15 set_mark        # size:4
	NOP 9
	ADD R15.1000, R0, R0 set_mark_2
	NOP 9
	LDV R15.1111, 0(15), <4>        # size:4
	NOP 9
	BL OpenGLES.VaryingPut4.Color_Light.1 # size:4
	NOP 9
	ADDI r4, r0, temp_var1@ha       # size:4
	NOP 9
	ADDI r6, r0, temp_var1@l        # size:4
	NOP 9
	ADD 15.1000, R4, R6
	NOP 9
	LDV R15.1111, 0(15), <4>        # size:4
	NOP 9
	BL OpenGLES.VaryingPut4.texcoord0.1 # size:4
	NOP 9
	ADDI r6, r0, temp_var2@l        # size:4
	NOP 9
	ADDI r4, r0, temp_var2@ha       # size:4
	NOP 9
	ADD 15.1000, R4, R6
	NOP 9
	LDV R15.1111, 0(15), <4>        # size:4
	NOP 9
	BL OpenGLES.VaryingPut4.normal.1 # size:4
	NOP 9
	BL OpenGLES.CallRegister        # size:4
	NOP 9
	MVR r29.1111, r16.xyzw, <4>     # size:4
	NOP 9
	BL OpenGLES.CallRegister        # size:4
	NOP 9
	MVR r17.1111, r16.xyzw, <4>     # size:4
	NOP 9
	MVR r15.1111, r30.xyzw, <4>     # size:4
	NOP 9
	MVR r16.1111, r29.xyzw, <4>     # size:4
	NOP 9
	BL OpenGLES.END.3               # size:4
	NOP 9
	LDV r4.1000, 11(1) set_mark_4
	NOP 9
	mtspr 256, 4
	ADDI r0, r1, 208 set_mark
	NOP 9
	ADD R20.1000, R0, R0 set_mark_2
	NOP 9
	LDV R20.1111, 0(20), <4>
	NOP 9
	LDV r30.1000, 488(1) set_mark_4
	NOP 9
	LDV r29.1000, 484(1) set_mark_4
	NOP 9
	LDV r28.1000, 480(1) set_mark_4
	NOP 9
	LDV r27.1000, 476(1) set_mark_4
	NOP 9
	LDV r26.1000, 472(1) set_mark_4
	NOP 9
	LDV r25.1000, 468(1) set_mark_4
	NOP 9
	LDV r14.1000, 464(1) set_mark_4
	NOP 9
	ADDI r1, r1, 496
	NOP 9
	LDV r0.1000, 4(1) set_mark_4
	NOP 9
	mtlr 0
	RET 
	NOP 9
.Ltmp1:
	.size	main, .Ltmp1-main
.Leh_func_end0:

	.type	Position_temp,@object   # @Position_temp
	.section	.bss,"aw",@nobits
	.globl	Position_temp
	.align	4
Position_temp:
	.space	16
	.size	Position_temp, 16

	.type	rm_Vertex,@object       # @rm_Vertex
	.align	4
rm_Vertex:
	.space	16
	.size	rm_Vertex, 16

	.type	rm_Normal,@object       # @rm_Normal
	.align	4
rm_Normal:
	.space	16
	.size	rm_Normal, 16

	.type	texcoord,@object        # @texcoord
	.align	3
texcoord:
	.space	8
	.size	texcoord, 8

	.type	Color_Light,@object     # @Color_Light
	.align	4
Color_Light:
	.space	16
	.size	Color_Light, 16

	.type	temp_var0,@object       # @temp_var0
	.globl	temp_var0
	.align	4
temp_var0:
	.space	16
	.size	temp_var0, 16

	.type	texcoord0,@object       # @texcoord0
	.align	3
texcoord0:
	.space	8
	.size	texcoord0, 8

	.type	temp_var1,@object       # @temp_var1
	.globl	temp_var1
	.align	4
temp_var1:
	.space	16
	.size	temp_var1, 16

	.type	normal,@object          # @normal
	.align	4
normal:
	.space	16
	.size	normal, 16

	.type	temp_var2,@object       # @temp_var2
	.globl	temp_var2
	.align	4
temp_var2:
	.space	16
	.size	temp_var2, 16

	.type	shaderr,@object         # @shaderr
	.align	2
shaderr:
	.long	0                       # 0x0
	.size	shaderr, 4

	.type	timeflag,@object        # @timeflag
	.align	2
timeflag:
	.long	0                       # float 0.000000e+00
	.size	timeflag, 4

	.type	ProjectionMatrix,@object # @ProjectionMatrix
	.align	4
ProjectionMatrix:
	.space	16
	.size	ProjectionMatrix, 16

	.type	ModelViewMatrix,@object # @ModelViewMatrix
	.align	4
ModelViewMatrix:
	.space	16
	.size	ModelViewMatrix, 16

	.type	NormalMatrix,@object    # @NormalMatrix
	.align	4
NormalMatrix:
	.space	16
	.size	NormalMatrix, 16

	.type	ambient_light,@object   # @ambient_light
	.align	4
ambient_light:
	.space	16
	.size	ambient_light, 16

	.type	ambient_material,@object # @ambient_material
	.align	4
ambient_material:
	.space	16
	.size	ambient_material, 16

	.type	diffuse_light,@object   # @diffuse_light
	.align	4
diffuse_light:
	.space	16
	.size	diffuse_light, 16

	.type	diffuse_material,@object # @diffuse_material
	.align	4
diffuse_material:
	.space	16
	.size	diffuse_material, 16

	.type	eye_Pos,@object         # @eye_Pos
	.align	4
eye_Pos:
	.space	16
	.size	eye_Pos, 16

	.type	light_Pos,@object       # @light_Pos
	.align	4
light_Pos:
	.space	16
	.size	light_Pos, 16

	.type	specular_light,@object  # @specular_light
	.align	4
specular_light:
	.space	16
	.size	specular_light, 16

	.type	specular_material,@object # @specular_material
	.align	4
specular_material:
	.space	16
	.size	specular_material, 16

	.type	specularExp,@object     # @specularExp
	.align	2
specularExp:
	.long	0                       # float 0.000000e+00
	.size	specularExp, 4

	.section	.eh_frame,"aw",@progbits
.LEH_frame0:
.Lsection_eh_frame0:
.Leh_frame_common0:
.Lset0 = .Leh_frame_common_end0-.Leh_frame_common_begin0 # Length of Common Information Entry
	.long	.Lset0
.Leh_frame_common_begin0:
	.long	0                       # CIE Identifier Tag
	.byte	1                       # DW_CIE_VERSION
	.byte	0                       # CIE Augmentation
	.uleb128	1               # CIE Code Alignment Factor
	.sleb128	-4              # CIE Data Alignment Factor
	.byte	65                      # CIE Return Address Column
	.byte	12                      # DW_CFA_def_cfa
	.uleb128	1               # Register
	.uleb128	0               # Offset
	.align	2
.Leh_frame_common_end0:
.Lmain.eh:
.Lset1 = .Leh_frame_end0-.Leh_frame_begin0 # Length of Frame Information Entry
	.long	.Lset1
.Leh_frame_begin0:
.Lset2 = .Leh_frame_begin0-.Leh_frame_common0 # FDE CIE offset
	.long	.Lset2
	.long	.Leh_func_begin0        # FDE initial location
.Lset3 = .Leh_func_end0-.Leh_func_begin0 # FDE address range
	.long	.Lset3
	.uleb128	0               # Augmentation size
	.byte	4                       # DW_CFA_advance_loc4
.Lset4 = .Ltmp0-.Leh_func_begin0
	.long	.Lset4
	.byte	14                      # DW_CFA_def_cfa_offset
	.uleb128	496             # Offset
	.byte	17                      # DW_CFA_offset_extended_sf
	.uleb128	65              # Reg
	.sleb128	-1              # Offset
	.byte	142                     # DW_CFA_offset + Reg (14)
	.uleb128	8               # Offset
	.byte	153                     # DW_CFA_offset + Reg (25)
	.uleb128	7               # Offset
	.byte	154                     # DW_CFA_offset + Reg (26)
	.uleb128	6               # Offset
	.byte	155                     # DW_CFA_offset + Reg (27)
	.uleb128	5               # Offset
	.byte	156                     # DW_CFA_offset + Reg (28)
	.uleb128	4               # Offset
	.byte	157                     # DW_CFA_offset + Reg (29)
	.uleb128	3               # Offset
	.byte	158                     # DW_CFA_offset + Reg (30)
	.uleb128	2               # Offset
	.byte	5                       # DW_CFA_offset_extended
	.uleb128	97              # Reg
	.uleb128	72              # Offset
	.align	2
.Leh_frame_end0:

	.text
.Ltext_end:
	.data
.Ldata_end:
	.text
.Lsection_end1:
	.section	.debug_frame,"",@progbits
.Ldebug_frame_common:
.Lset5 = .Ldebug_frame_common_end-.Ldebug_frame_common_begin # Length of Common Information Entry
	.long	.Lset5
.Ldebug_frame_common_begin:
	.long	4294967295              # CIE Identifier Tag
	.byte	1                       # CIE Version
	.byte	0                       # CIE Augmentation
	.uleb128	1               # CIE Code Alignment Factor
	.sleb128	-4              # CIE Data Alignment Factor
	.byte	65                      # CIE RA Column
	.byte	12                      # DW_CFA_def_cfa
	.uleb128	1               # Register
	.uleb128	0               # Offset
	.align	2
.Ldebug_frame_common_end:
	.section	.debug_info,"",@progbits
.Linfo_begin1:
	.long	45                      # Length of Compilation Unit Info
	.short	2                       # DWARF version number
	.long	.Labbrev_begin          # Offset Into Abbrev. Section
	.byte	4                       # Address Size (in bytes)
	.uleb128	1               # Abbrev [1] 0xb:0x22 DW_TAG_compile_unit
	.byte	0                       # DW_AT_producer
	.byte	12                      # DW_AT_language
	.ascii	 "size"                 # DW_AT_name
	.byte	0
	.long	0                       # DW_AT_entry_pc
	.long	.Lsection_line          # DW_AT_stmt_list
	.uleb128	2               # Abbrev [2] 0x1b:0x11 DW_TAG_subprogram
	.ascii	 "vector"               # DW_AT_name
	.byte	0
	.ascii	 "vector"               # DW_AT_MIPS_linkage_name
	.byte	0
	.byte	1                       # DW_AT_prototyped
	.byte	1                       # DW_AT_external
	.byte	0                       # End Of Children Mark
	.byte	0                       # 4 extra padding bytes for GDB
	.byte	0
	.byte	0
	.byte	0
.Linfo_end1:
	.section	.debug_abbrev,"",@progbits
.Labbrev_begin:
	.uleb128	1               # Abbreviation Code
	.uleb128	17              # DW_TAG_compile_unit
	.uleb128	1               # DW_CHILDREN_yes
	.uleb128	37              # DW_AT_producer
	.uleb128	8               # DW_FORM_string
	.uleb128	19              # DW_AT_language
	.uleb128	11              # DW_FORM_data1
	.uleb128	3               # DW_AT_name
	.uleb128	8               # DW_FORM_string
	.uleb128	82              # DW_AT_entry_pc
	.uleb128	1               # DW_FORM_addr
	.uleb128	16              # DW_AT_stmt_list
	.uleb128	1               # DW_FORM_addr
	.uleb128	0               # EOM(1)
	.uleb128	0               # EOM(2)
	.uleb128	2               # Abbreviation Code
	.uleb128	46              # DW_TAG_subprogram
	.uleb128	0               # DW_CHILDREN_no
	.uleb128	3               # DW_AT_name
	.uleb128	8               # DW_FORM_string
	.uleb128	8199            # DW_AT_MIPS_linkage_name
	.uleb128	8               # DW_FORM_string
	.uleb128	39              # DW_AT_prototyped
	.uleb128	12              # DW_FORM_flag
	.uleb128	63              # DW_AT_external
	.uleb128	12              # DW_FORM_flag
	.uleb128	0               # EOM(1)
	.uleb128	0               # EOM(2)
	.uleb128	0               # EOM(3)
.Labbrev_end:
	.section	.debug_line,"",@progbits
.Lset6 = .Lline_end-.Lline_begin        # Length of Source Line Info
	.long	.Lset6
.Lline_begin:
	.short	2                       # DWARF version number
.Lset7 = .Lline_prolog_end-.Lline_prolog_begin # Prolog Length
	.long	.Lset7
.Lline_prolog_begin:
	.byte	1                       # Minimum Instruction Length
	.byte	1                       # Default is_stmt_start flag
	.byte	246                     # Line Base Value (Special Opcodes)
	.byte	245                     # Line Range Value (Special Opcodes)
	.byte	10                      # Special Opcode Base
	.byte	0                       # DW_LNS_copy arg count
	.byte	1                       # DW_LNS_advance_pc arg count
	.byte	1                       # DW_LNS_advance_line arg count
	.byte	1                       # DW_LNS_set_file arg count
	.byte	1                       # DW_LNS_set_column arg count
	.byte	0                       # DW_LNS_negate_stmt arg count
	.byte	0                       # DW_LNS_set_basic_block arg count
	.byte	0                       # DW_LNS_const_add_pc arg count
	.byte	1                       # DW_LNS_fixed_advance_pc arg count
	.byte	0                       # Directory
	.byte	0                       # End of directories
	.asciz	 "size"                 # Source
	.uleb128	1               # Directory #
	.uleb128	0               # Mod date
	.uleb128	0               # File size
	.byte	0                       # End of files
.Lline_prolog_end:
	.byte	0                       # Extended Op
	.byte	5                       # Op size
	.byte	2                       # DW_LNE_set_address
	.long	.Lsection_end1          # Section end label
	.byte	0                       # DW_LNE_end_sequence
	.byte	1
	.byte	1
.Lline_end:
	.section	.debug_pubnames,"",@progbits
.Lset8 = .Lpubnames_end1-.Lpubnames_begin1 # Length of Public Names Info
	.long	.Lset8
.Lpubnames_begin1:
	.short	2                       # DWARF Version
	.long	.Linfo_begin1           # Offset of Compilation Unit Info
.Lset9 = .Linfo_end1-.Linfo_begin1      # Compilation Unit Length
	.long	.Lset9
	.long	27                      # DIE offset
	.asciz	 "vector"               # External Name
	.long	0                       # End Mark
.Lpubnames_end1:
	.section	.debug_pubtypes,"",@progbits
.Lset10 = .Lpubtypes_end1-.Lpubtypes_begin1 # Length of Public Types Info
	.long	.Lset10
.Lpubtypes_begin1:
	.short	2                       # DWARF Version
	.long	.Linfo_begin1           # Offset of Compilation Unit Info
.Lset11 = .Linfo_end1-.Linfo_begin1     # Compilation Unit Length
	.long	.Lset11
	.long	0                       # End Mark
.Lpubtypes_end1:
	.section	.debug_aranges,"",@progbits
	.section	.debug_ranges,"",@progbits
	.section	.debug_macinfo,"",@progbits
	.weak	shaderr.u.0.1
	.weak	timeflag.u.0.1
	.weak	NormalMatrix.u.0.3
	.weak	NormalMatrix.u.1.3
	.weak	NormalMatrix.u.2.3
	.weak	light_Pos.u.0.1
	.weak	eye_Pos.u.0.1
	.weak	diffuse_light.u.0.1
	.weak	diffuse_material.u.0.1
	.weak	ambient_light.u.0.1
	.weak	ambient_material.u.0.1
	.weak	specularExp.u.0.1
	.weak	specular_material.u.0.1
	.weak	specular_light.u.0.1
	.weak	ModelViewMatrix.u.0.4
	.weak	ModelViewMatrix.u.1.4
	.weak	ModelViewMatrix.u.2.4
	.weak	ModelViewMatrix.u.3.4
	.weak	ProjectionMatrix.u.0.4
	.weak	ProjectionMatrix.u.1.4
	.weak	ProjectionMatrix.u.2.4
	.weak	ProjectionMatrix.u.3.4
	.weak	OpenGLES.Start
	.weak	OpenGLES.LoadAttribute4.rm_Vertex.0
	.weak	OpenGLES.LoadAttribute2.texcoord.0
	.weak	OpenGLES.CallRegister
	.weak	OpenGLES.Normalize.vec4
	.weak	OpenGLES.LoadAttribute3.rm_Normal.0
	.weak	OpenGLES.Normalize.vec3
	.weak	OpenGLES.ChangeMatrix3.1
	.weak	OpenGLES.ChangeMatrix3.2
	.weak	OpenGLES.ChangeMatrix3.3
	.weak	OpenGLES.VectorTimesMatrix3.5
	.weak	OpenGLES.Dot.vec3.vec3
	.weak	OpenGLES.Max.f.f
	.weak	OpenGLES.Pow.f.f
	.weak	OpenGLES.ScalarTimesVector
	.weak	OpenGLES.FloatDiv4
	.weak	OpenGLES.ChangeMatrix4.1
	.weak	OpenGLES.ChangeMatrix4.2
	.weak	OpenGLES.ChangeMatrix4.3
	.weak	OpenGLES.ChangeMatrix4.4
	.weak	OpenGLES.VectorTimesMatrix4.6
	.weak	OpenGLES.VaryingPut4.Color_Light.1
	.weak	OpenGLES.VaryingPut4.texcoord0.1
	.weak	OpenGLES.VaryingPut4.normal.1
	.weak	OpenGLES.END.3

