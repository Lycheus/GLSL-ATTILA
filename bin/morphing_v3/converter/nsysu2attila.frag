ldi r29.1000, 0
nop 9
ldi r29.1000, 0
ldi r2.1000, 1024
nop 9
ldi r15.0001, 1.000000
nop 9
ldi r15.0010, 1.000000
nop 9
ldif r15.0100, r0, 1.000000
nop 9
ldi r15.1000, 1.000000
nop 9
nop 9
nop 9
nop 9
nop 9
stv r0.1111, r15, 1024, 
nop 9
ldi r15.0001, 2.000000
nop 9
ldi r15.0010, 2.000000
nop 9
ldif r15.0100, r0, 2.000000
nop 9
ldi r15.1000, 2.000000
nop 9
nop 9
nop 9
nop 9
nop 9
stv r0.1111, r15, 1025, 
nop 9
ldi r15.1000, 1.000000
nop 9
nop 9
nop 9
nop 9
nop 9
stv r0.1111, r15, 1026, 
ldv r4.1000, r29, 0
ldi r5.1000, 1
beqs r4.xxxx, r5.xxxx, 2, 
jmp 59
ldi r4.1000, 0
ldv r29.1000, r4, 1
ldi r28.1000, 0
mvr r16.1111, r34.xyzw, 
ldi r27.1000, 1027
mvr r15.1111, r29.xyzw, 
tex r16, r16
add r3.1000, r28, r27
nop 9
nop 9
nop 9
nop 9
nop 9
stv r3.1111, r16, 0, 
jmp 275
ldi r29.1000, 0
mvr r16.1111, r35.xyzw, 
mvr r28.1111, r16.xyzw, 
ldi r27.1000, 1024
mvr r16.1111, r0.xyzw, 
mvr r26.1111, r16.xyzw, 
add r29.1000, r29, r27
ldv r29.1111, r29, 0
mvr r16.1111, r0.xyzw, 
mvr r17.1111, r16.xyzw, 
addf r29.1111, r28.xyzw, r29.xyzw
addi r28.1000, r2, 13
mvr r15.1111, r29.xyzw, 
mvr r16.1111, r26.xyzw, 
ldif r15.0001, r0, 0.000000
nop 9
mvr r17.1111, r15.xyzw, 
nop 9
mvr r16.1111, r15.xyzw, 
nop 9
mulf r15.1111, r15.xyzw, r15.xyzw, 
nop 9
addf r15.1000, r15.xyzw, r15.yyzw, 
nop 9
addf r15.1000, r15.xyzw, r15.zyzw, 
nop 9
addf r15.1000, r15.xyzw, r15.wyzw, 
nop 9
mvr r16.1111, r17.xyzw, 
nop 9
dsq r17.1000, r15
nop 9
mvr r16.1000, r17.yyzw, 
nop 9
dsq r16.1000, r15
nop 9
mvr r17.0100, r16.xxzw, 
nop 9
mvr r16.1000, r17.zyzw, 
nop 9
dsq r16.1000, r15
nop 9
mvr r17.0010, r16.xyxw, 
nop 9
mvr r16.1000, r17.wyzw, 
nop 9
dsq r16.1000, r15
nop 9
mvr r17.0001, r16.xyzx, 
nop 9
mvr r16.1111, r17.xyzw, 
addi r4.1000, r2, 14
add r3.1000, r0, r28
nop 9
nop 9
nop 9
nop 9
nop 9
stv r3.1111, r16, 0, 
addi r5.1000, r2, 15
add r3.1000, r0, r4
nop 9
nop 9
nop 9
nop 9
nop 9
stv r3.1111, r16, 0, 
ldv r3.1000, r2, 13
mvr r4.1000, r3.xyzw, 
add r3.1000, r0, r5
nop 9
nop 9
nop 9
nop 9
nop 9
stv r3.1111, r16, 0, 
ldv r3.0100, r2, 14
mvr r5.1000, r3.yyzw, 
ldi r6.1000, 0
ldi r7.1000, 1027
ldi r8.1000, 0
ldv r3.0010, r2, 15
mvr r9.1000, r3.zyzw, 
addi r10.1000, r2, 12
nop 9
nop 9
nop 9
nop 9
nop 9
stv r2.1000, r4, 12, 
addi r4.1000, r2, 16
add r11.1000, r6, r7
ldv r11.1111, r11, 0
ldv r3.1000, r8, 1026
mvr r8.1000, r3.xyzw, 
add r10.1000, r0, r10
ldv r10.1111, r10, 0
add r3.1000, r0, r4
nop 9
nop 9
nop 9
nop 9
nop 9
stv r3.1111, r29, 0, 
addi r12.1000, r2, 11
nop 9
nop 9
nop 9
nop 9
nop 9
stv r2.1000, r5, 11, 
addi r5.1000, r2, 10
nop 9
nop 9
nop 9
nop 9
nop 9
stv r2.1000, r9, 10, 
add r9.1000, r0, r12
ldv r9.1111, r9, 0
add r3.1000, r0, r4
nop 9
nop 9
nop 9
nop 9
nop 9
stv r3.1111, r16, 0, 
mvr r3.1110, r11.yzww, 
nop 9
mvr r3.0001, r10.xyzx, 
nop 9
mvr r4.1111, r3.xyzw, 
mvr r3.1000, r4.wyzw, 
nop 9
mvr r3.0111, r4.xxyz, 
nop 9
mvr r4.1111, r3.xyzw, 
addi r10.1000, r2, 9
nop 9
nop 9
nop 9
nop 9
nop 9
stv r2.1000, r8, 9, 
add r5.1000, r0, r5
ldv r5.1111, r5, 0
add r3.1000, r6, r7
nop 9
nop 9
nop 9
nop 9
nop 9
stv r3.1111, r4, 0, 
mvr r3.1010, r4.xxyy, 
nop 9
mvr r3.0101, r9.xxyy, 
nop 9
mvr r8.1111, r3.xyzw, 
mvr r3.1100, r4.zwzw, 
nop 9
mvr r3.0011, r8.xyxy, 
nop 9
mvr r4.1111, r3.xyzw, 
mvr r3.1100, r4.zwzw, 
nop 9
mvr r3.0011, r4.xyxy, 
nop 9
mvr r4.1111, r3.xyzw, 
add r8.1000, r0, r10
ldv r8.1111, r8, 0
add r3.1000, r6, r7
nop 9
nop 9
nop 9
nop 9
nop 9
stv r3.1111, r4, 0, 
mvr r3.1100, r4.zwzw, 
nop 9
mvr r3.0011, r4.xyxy, 
nop 9
mvr r4.1111, r3.xyzw, 
mvr r3.1110, r4.yzww, 
nop 9
mvr r3.0001, r5.xyzx, 
nop 9
mvr r4.1111, r3.xyzw, 
mvr r3.1110, r4.yzww, 
nop 9
mvr r3.0001, r4.xyzx, 
nop 9
mvr r4.1111, r3.xyzw, 
add r3.1000, r6, r7
nop 9
nop 9
nop 9
nop 9
nop 9
stv r3.1111, r4, 0, 
mvr r3.1000, r4.wyzw, 
nop 9
mvr r3.0111, r4.xxyz, 
nop 9
mvr r4.1111, r3.xyzw, 
mvr r3.1110, r4.yzww, 
nop 9
mvr r3.0001, r8.xyzx, 
nop 9
mvr r4.1111, r3.xyzw, 
add r3.1000, r6, r7
nop 9
nop 9
nop 9
nop 9
nop 9
stv r3.1111, r4, 0, 
ldi r29.1000, 0
ldi r28.1000, 1027
mvr r16.1111, r33.xyzw, 
mvr r27.1111, r16.xyzw, 
add r29.1000, r29, r28
ldv r29.1111, r29, 0
ldi r28.1000, 0
ldi r26.1000, 1025
mvr r16.1111, r0.xyzw, 
mvr r25.1111, r16.xyzw, 
add r28.1000, r28, r26
ldv r28.1111, r28, 0
mvr r16.1111, r0.xyzw, 
mvr r18.1111, r16.xyzw, 
addf r15.1111, r29.xyzw, r27.xyzw
mvr r16.1111, r28.xyzw, 
mvr r17.1111, r25.xyzw, 
mvr r17.1000, r15.wyzw, 
nop 9
mvr r18.1000, r16.wyzw, 
nop 9
div r17.0001, r18
nop 9
mvr r17.1000, r15.zyzw, 
nop 9
mvr r18.1000, r16.zyzw, 
nop 9
div r17.0010, r18
nop 9
mvr r17.1000, r15.yyzw, 
nop 9
mvr r18.1000, r16.yyzw, 
nop 9
div r17.0100, r18
nop 9
mvr r15.0111, r17.xyzw, 
nop 9
div r15.1000, r16
nop 9
mvr r16.1111, r15.xyzw, 
mvr r29.1111, r16.xyzw, 
mvr r15.1111, r29.xyzw, 
nop 9
mvr r0.1111, r15.xyzw, 
nop 9
mvr r1.1100, r32.xyzw, 
nop 9
mvr r2.1000, r32.zzzz, 
end code.
