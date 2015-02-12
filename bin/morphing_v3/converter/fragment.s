	.file	"fragment.bc"
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
	.section	.rodata.cst16,"aM",@progbits,16
	.align	4
.LCPI0_0:                               # constant pool <4 x float>
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
.LCPI0_2:                               # constant pool <4 x float>
	.long	1073741824              # float 2.000000e+00
	.long	1073741824              # float 2.000000e+00
	.long	1073741824              # float 2.000000e+00
	.long	1073741824              # float 2.000000e+00
	.section	.rodata.cst4,"aM",@progbits,4
	.align	2
.LCPI0_1:                               # constant pool float
	.long	1065353216              # float 1.000000e+00
	.text
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
.Leh_func_begin0:
# BB#0:                                 # %entry
	mflr 0
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	STV r0, 4(1), <1> set_mark_4
	ST r1, -64(1)
	ADDI r1, r1, -64
.Ltmp0:
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	STV r25, 36(1), <1> set_mark_4
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	STV r26, 40(1), <1> set_mark_4
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	STV r27, 44(1), <1> set_mark_4
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	STV r28, 48(1), <1> set_mark_4
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	STV r29, 52(1), <1> set_mark_4
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	STV r30, 56(1), <1> set_mark_4
	mfspr 30, 256
	mtspr 256, 4
	ADDI r29, r0, shaderr.u.0.1@ha
	BL OpenGLES.Start               # size:4
	LDV r4.1000, shaderr.u.0.1@l(29) set_mark_4
	ADDI r5, r0, 1
	gpu_beq 4, 5, 2, <1>
	B .LBB0_2
# BB#1:                                 # %L1.T
	ADDI r4, r0, Tex.u.0.1.s@ha
	LDV r29.1000, Tex.u.0.1.s@l(4) set_mark_4
	ADDI r28, r0, FragColor_temp@ha # size:4
	BL OpenGLES.LoadVarying2.texcoord0.0 # size:4
	ADDI r27, r0, FragColor_temp@l  # size:4
	MVR r15.1111, r29.xyzw, <4>     # size:4
	BL texture2D                    # size:4
	ADD R3, R28, R27
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	STV R16, 0(R3) set_mark_3       # size:4
	B .LBB0_3
.LBB0_2:                                # %L1.F
	ADDI r29, r0, .LCPI0_0@ha
	BL OpenGLES.LoadVarying3.normal.0 # size:4
	MVR r28.1111, r16.xyzw, <4>     # size:4
	ADDI r27, r0, .LCPI0_0@l
	BL OpenGLES.CallRegister        # size:4
	MVR r26.1111, r16.xyzw, <4>     # size:4
	ADD 29.1000, R29, R27
	LDV R29.1111, 0(29), <4>        # size:4
	BL OpenGLES.CallRegister        # size:4
	MVR r17.1111, r16.xyzw, <4>     # size:4
	ADDF r29.1111, r28.xyzw, r29.xyzw <4> # size:4
	ADDI r28, r1, 13
	MVR r15.1111, r29.xyzw, <4>     # size:4
	MVR r16.1111, r26.xyzw, <4>     # size:4
	BL OpenGLES.Normalize.vec3      # size:4
	ADDI r4, r1, 14
	ADD R3, R0, R28
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	STV R16, 0(R3) set_mark_3       # size:4
	ADDI r5, r1, 15
	ADD R3, R0, R4
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	STV R16, 0(R3) set_mark_3       # size:4
	LDV R3.1000, 13(1) set_mark_4
	MVR R4.1000, R3.xyzw, <4>       # size:4
	ADD R3, R0, R5
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	STV R16, 0(R3) set_mark_3       # size:4
	LDV R3.0100, 14(1) set_mark_4
	MVR R5.1000, R3.yyzw, <4>       # size:4
	ADDI r6, r0, FragColor_temp@ha  # size:4
	ADDI r7, r0, FragColor_temp@l   # size:4
	ADDI r8, r0, .LCPI0_1@ha
	LDV R3.0010, 15(1) set_mark_4
	MVR R9.1000, R3.zyzw, <4>       # size:4
	ADDI r10, r1, 12
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	STV r4.1000, 12(1), <1> set_mark_4 # size:4
	ADDI r4, r1, 16
	ADD 11.1000, R6, R7
	LDV R11.1111, 0(11), <4>        # size:4
	LDV R3.1000, .LCPI0_1@l(8) set_mark_4
	MVR R8.1000, R3.xyzw, <4>
	ADD 10.1000, R0, R10
	LDV R10.1111, 0(10), <4>        # size:4
	ADD R3, R0, R4
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	STV R29, 0(R3) set_mark_3       # size:4
	ADDI r12, r1, 11
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	STV r5.1000, 11(1), <1> set_mark_4 # size:4
	ADDI r5, r1, 10
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	STV r9.1000, 10(1), <1> set_mark_4 # size:4
	ADD 9.1000, R0, R12
	LDV R9.1111, 0(9), <4>          # size:4
	ADD R3, R0, R4
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	STV R16, 0(R3) set_mark_3       # size:4
	vsldoi 4, 11, 10, 4             # size:4
	vsldoi 4, 4, 4, 12              # size:4
	ADDI r10, r1, 9
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	STV r8.1000, 9(1), <1> set_mark_4 # size:4
	ADD 5.1000, R0, R5
	LDV R5.1111, 0(5), <4>          # size:4
	ADD R3, R6, R7
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	STV R4, 0(R3) set_mark_3        # size:4
	vmrghw 8, 4, 9                  # size:4
	vsldoi 4, 4, 8, 8               # size:4
	vsldoi 4, 4, 4, 8               # size:4
	ADD 8.1000, R0, R10
	LDV R8.1111, 0(8), <4>          # size:4
	ADD R3, R6, R7
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	STV R4, 0(R3) set_mark_3        # size:4
	vsldoi 4, 4, 4, 8               # size:4
	vsldoi 4, 4, 5, 4               # size:4
	vsldoi 4, 4, 4, 4               # size:4
	ADD R3, R6, R7
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	STV R4, 0(R3) set_mark_3        # size:4
	vsldoi 4, 4, 4, 12              # size:4
	vsldoi 4, 4, 8, 4               # size:4
	ADD R3, R6, R7
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	NOP 9
	STV R4, 0(R3) set_mark_3        # size:4
.LBB0_3:                                # %L1.E
	ADDI r29, r0, FragColor_temp@ha # size:4
	ADDI r28, r0, FragColor_temp@l  # size:4
	BL OpenGLES.LoadVarying4.Color_Light.0 # size:4
	MVR r27.1111, r16.xyzw, <4>     # size:4
	ADD 29.1000, R29, R28
	LDV R29.1111, 0(29), <4>        # size:4
	ADDI r28, r0, .LCPI0_2@ha
	ADDI r26, r0, .LCPI0_2@l
	BL OpenGLES.CallRegister        # size:4
	MVR r25.1111, r16.xyzw, <4>     # size:4
	ADD 28.1000, R28, R26
	LDV R28.1111, 0(28), <4>        # size:4
	BL OpenGLES.CallRegister        # size:4
	MVR r18.1111, r16.xyzw, <4>     # size:4
	ADDF r15.1111, r29.xyzw, r27.xyzw <4> # size:4
	MVR r16.1111, r28.xyzw, <4>     # size:4
	MVR r17.1111, r25.xyzw, <4>     # size:4
	BL OpenGLES.FloatDiv4           # size:4
	MVR r29.1111, r16.xyzw, <4>     # size:4
	MVR r15.1111, r29.xyzw, <4>     # size:4
	BL OpenGLES.ENDFrag.1           # size:4
	MVR r15.1111, r29.xyzw, <4>     # size:4
	BL OpenGLES.ENDFrag.1           # size:4
	mtspr 256, 30
	LDV r30.1000, 56(1) set_mark_4
	LDV r29.1000, 52(1) set_mark_4
	LDV r28.1000, 48(1) set_mark_4
	LDV r27.1000, 44(1) set_mark_4
	LDV r26.1000, 40(1) set_mark_4
	LDV r25.1000, 36(1) set_mark_4
	ADDI r1, r1, 64
	LDV r0.1000, 4(1) set_mark_4
	mtlr 0
	blr 
.Ltmp1:
	.size	main, .Ltmp1-main
.Leh_func_end0:

	.type	FragColor_temp,@object  # @FragColor_temp
	.section	.bss,"aw",@nobits
	.globl	FragColor_temp
	.align	4
FragColor_temp:
	.space	16
	.size	FragColor_temp, 16

	.type	Tex,@object             # @Tex
	.align	2
Tex:
	.long	0                       # 0x0
	.size	Tex, 4

	.type	Color_Light,@object     # @Color_Light
	.align	4
Color_Light:
	.space	16
	.size	Color_Light, 16

	.type	texcoord0,@object       # @texcoord0
	.align	3
texcoord0:
	.space	8
	.size	texcoord0, 8

	.type	normal,@object          # @normal
	.align	4
normal:
	.space	16
	.size	normal, 16

	.type	shaderr,@object         # @shaderr
	.align	2
shaderr:
	.long	0                       # 0x0
	.size	shaderr, 4

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
	.uleb128	64              # Offset
	.byte	17                      # DW_CFA_offset_extended_sf
	.uleb128	65              # Reg
	.sleb128	-1              # Offset
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
	.weak	Tex.u.0.1.s
	.weak	OpenGLES.Start
	.weak	OpenGLES.LoadVarying2.texcoord0.0
	.weak	texture2D
	.weak	OpenGLES.LoadVarying3.normal.0
	.weak	OpenGLES.CallRegister
	.weak	OpenGLES.Normalize.vec3
	.weak	OpenGLES.LoadVarying4.Color_Light.0
	.weak	OpenGLES.FloatDiv4
	.weak	OpenGLES.ENDFrag.1

