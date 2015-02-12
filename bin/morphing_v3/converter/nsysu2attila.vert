ldi r30.1000, 0
nop 9
ldi r2.1000, 31
nop 9
ldi r15.1000, 1.000000
nop 9
nop 9
nop 9
nop 9
nop 9
stv r0.1111, r15, 22, 
nop 9
ldi r15.1000, -2.525870
nop 9
nop 9
nop 9
nop 9
nop 9
stv r0.1111, r15, 23, 
nop 9
ldi r15.1000, 0.300000
nop 9
nop 9
nop 9
nop 9
nop 9
stv r0.1111, r15, 24, 
nop 9
ldi r15.1000, 0
nop 9
nop 9
nop 9
nop 9
nop 9
stv r0.1111, r15, 25, 
nop 9
ldi r15.0001, 3.000000
nop 9
ldi r15.0010, 3.000000
nop 9
ldif r15.0100, r0, 3.000000
nop 9
ldi r15.1000, 3.000000
nop 9
nop 9
nop 9
nop 9
nop 9
stv r0.1111, r15, 26, 
nop 9
addi r29.1000, r2, 32
nop 9
nop 9
nop 9
stv r2.1111, r29, 16, 
nop 9
mvr r16.1111, r32.xyzw, 
nop 9
ldv r4.1000, r30, 0
nop 9
add r3.1000, r0, r29
nop 9
nop 9
nop 9
stv r3.1111, r16, 0, 
nop 9
ldi r5.1000, 1
nop 9
beqs r4.xxxx, r5.xxxx, 3, 
nop 9
jmp 86
nop 9
ldi r30.1000, 0
nop 9
ldi r29.1000, 29
nop 9
mvr r16.1111, r34.xyzw, 
nop 9
add r3.1000, r30, r29
nop 9
nop 9
nop 9
stv r3.1111, r16, 0, 
nop 9
jmp 612
nop 9
ldv r30.1000, r2, 16
nop 9
add r29.1000, r0, r30
nop 9
ldv r29.1111, r29, 0
nop 9
addi r28.1000, r2, 31
nop 9
mvr r16.1111, r0.xyzw, 
nop 9
mvr r27.1111, r16.xyzw, 
nop 9
ldi r26.1000, 0
nop 9
mvr r16.1111, r0.xyzw, 
nop 9
mvr r17.1111, r16.xyzw, 
nop 9
ldi r25.1000, 0
nop 9
mvr r15.1111, r29.xyzw, 
nop 9
mvr r16.1111, r27.xyzw, 
nop 9
nop 9
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
nop 9
add r3.1000, r0, r28
nop 9
nop 9
nop 9
stv r3.1111, r16, 0, 
nop 9
ldv r3.1000, r26, 22
nop 9
mvr r29.1000, r3.xyzw, 
nop 9
ldv r3.1000, r25, 1
nop 9
mvr r4.1000, r3.xyzw, 
nop 9
ldv r3.0100, r2, 31
nop 9
mvr r5.1000, r3.yyzw, 
nop 9
addi r6.1000, r2, 30
nop 9
addf r4.1000, r5, -r4
nop 9
nop 9
nop 9
stv r2.1000, r29, 30, 
nop 9
addi r5.1000, r2, 29
nop 9
nop 9
nop 9
stv r2.1000, r4, 29, 
nop 9
add r6.1000, r0, r6
nop 9
ldv r6.1111, r6, 0
nop 9
add r5.1000, r0, r5
nop 9
ldv r5.1111, r5, 0
nop 9
add r3.1000, r0, r30
nop 9
nop 9
nop 9
stv r3.1111, r16, 0, 
nop 9
ldi r7.1000, 0
nop 9
mvr r3.1000, r16.wyzw, 
nop 9
mvr r3.0111, r16.xxyz, 
nop 9
mvr r8.1111, r3.xyzw, 
nop 9
mvr r3.1110, r8.yzww, 
nop 9
mvr r3.0001, r6.xyzx, 
nop 9
mvr r6.1111, r3.xyzw, 
nop 9
add r3.1000, r0, r30
nop 9
nop 9
nop 9
stv r3.1111, r6, 0, 
nop 9
mvr r3.1010, r6.xxyy, 
nop 9
mvr r3.0101, r5.xxyy, 
nop 9
mvr r5.1111, r3.xyzw, 
nop 9
mvr r3.1100, r6.zwzw, 
nop 9
mvr r3.0011, r5.xyxy, 
nop 9
mvr r5.1111, r3.xyzw, 
nop 9
mvr r3.1100, r5.zwzw, 
nop 9
mvr r3.0011, r5.xyxy, 
nop 9
mvr r5.1111, r3.xyzw, 
nop 9
add r3.1000, r0, r30
nop 9
nop 9
nop 9
stv r3.1111, r5, 0, 
nop 9
ldv r3.1000, r7, 23
nop 9
mvr r5.1000, r3.xyzw, 
nop 9
nop 9
nop 9
stv r2.1000, r5, 15, 
nop 9
bltsf r4.xxxx, r5.xxxx, 3, 
nop 9
jmp 612
nop 9
add r30.1000, r0, r30
nop 9
ldv r30.1111, r30, 0
nop 9
addi r28.1000, r2, 48
nop 9
mvr r16.1111, r33.xyzw, 
nop 9
addi r5.1000, r2, 25
nop 9
add r27.1000, r0, r28
nop 9
ldv r27.1111, r27, 0
nop 9
addi r6.1000, r2, 24
nop 9
add r3.1000, r0, r5
nop 9
nop 9
nop 9
stv r3.1111, r16, 0, 
nop 9
add r3.1000, r0, r6
nop 9
nop 9
nop 9
stv r3.1111, r16, 0, 
nop 9
ldv r3.0100, r2, 25
nop 9
mvr r26.1000, r3.yyzw, 
nop 9
ldv r3.1000, r2, 24
nop 9
mvr r25.1000, r3.xyzw, 
nop 9
mvr r16.1111, r0.xyzw, 
nop 9
addi r3.1000, r2, 14
nop 9
add r3.1000, r3, r0
nop 9
nop 9
nop 9
stv r3.1111, r16, 0, 
nop 9
addi r14.1000, r2, 21
nop 9
nop 9
nop 9
stv r2.1000, r29, 21, 
nop 9
addi r29.1000, r2, 22
nop 9
nop 9
nop 9
stv r2.1000, r26, 22, 
nop 9
addi r26.1000, r2, 23
nop 9
nop 9
nop 9
stv r2.1000, r25, 23, 
nop 9
mvr r16.1111, r0.xyzw, 
nop 9
mvr r17.1111, r16.xyzw, 
nop 9
add r5.1000, r0, r26
nop 9
ldv r5.1111, r5, 0
nop 9
add r6.1000, r0, r14
nop 9
ldv r6.1111, r6, 0
nop 9
add r7.1000, r0, r29
nop 9
ldv r7.1111, r7, 0
nop 9
mvr r3.1110, r27.yzww, 
nop 9
mvr r3.0001, r5.xyzx, 
nop 9
mvr r5.1111, r3.xyzw, 
nop 9
mvr r3.1000, r5.wyzw, 
nop 9
mvr r3.0111, r5.xxyz, 
nop 9
mvr r29.1111, r3.xyzw, 
nop 9
mvr r3.1010, r29.xxyy, 
nop 9
mvr r3.0101, r7.xxyy, 
nop 9
mvr r5.1111, r3.xyzw, 
nop 9
mvr r3.1100, r29.zwzw, 
nop 9
mvr r3.0011, r5.xyxy, 
nop 9
mvr r5.1111, r3.xyzw, 
nop 9
mvr r3.1100, r5.zwzw, 
nop 9
mvr r3.0011, r5.xyxy, 
nop 9
mvr r27.1111, r3.xyzw, 
nop 9
mvr r3.1100, r27.zwzw, 
nop 9
mvr r3.0011, r27.xyxy, 
nop 9
mvr r5.1111, r3.xyzw, 
nop 9
mvr r3.1110, r5.yzww, 
nop 9
mvr r3.0001, r6.xyzx, 
nop 9
mvr r5.1111, r3.xyzw, 
nop 9
mvr r3.1110, r5.yzww, 
nop 9
mvr r3.0001, r5.xyzx, 
nop 9
mvr r26.1111, r3.xyzw, 
nop 9
addi r25.1000, r2, 19
nop 9
mvr r15.1111, r26.xyzw, 
nop 9
addi r3.1000, r2, 14
nop 9
add r16.1000, r3, r0
nop 9
ldv r16.1111, r16, 0
nop 9
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
nop 9
addi r5.1000, r2, 20
nop 9
addi r6.1000, r2, 27
nop 9
add r3.1000, r0, r25
nop 9
nop 9
nop 9
stv r3.1111, r16, 0, 
nop 9
ldi r7.1000, 0
nop 9
addi r8.1000, r2, 26
nop 9
ldv r3.1000, r2, 15
nop 9
mvr r9.1000, r3.xyzw, 
nop 9
nop 9
nop 9
stv r2.1000, r9, 26, 
nop 9
addi r9.1000, r2, 28
nop 9
add r3.1000, r0, r5
nop 9
nop 9
nop 9
stv r3.1111, r16, 0, 
nop 9
add r3.1000, r0, r6
nop 9
nop 9
nop 9
stv r3.1111, r30, 0, 
nop 9
add r5.1000, r0, r8
nop 9
ldv r5.1111, r5, 0
nop 9
ldv r3.1000, r2, 19
nop 9
mvr r6.1000, r3.xyzw, 
nop 9
ldv r3.1000, r7, 24
nop 9
mvr r7.1000, r3.xyzw, 
nop 9
add r3.1000, r0, r9
nop 9
nop 9
nop 9
stv r3.1111, r30, 0, 
nop 9
ldv r3.0100, r2, 20
nop 9
mvr r8.1000, r3.yyzw, 
nop 9
ldv r3.1000, r2, 27
nop 9
mvr r9.1000, r3.xyzw, 
nop 9
mulf r6.1000, r6, r7, 
nop 9
mvr r3.1010, r30.xxyy, 
nop 9
mvr r3.0101, r5.xxyy, 
nop 9
mvr r5.1111, r3.xyzw, 
nop 9
mvr r3.1100, r30.zwzw, 
nop 9
mvr r3.0011, r5.xyxy, 
nop 9
mvr r5.1111, r3.xyzw, 
nop 9
mvr r3.1100, r5.zwzw, 
nop 9
mvr r3.0011, r5.xyxy, 
nop 9
mvr r5.1111, r3.xyzw, 
nop 9
ldv r4.1000, r2, 16
nop 9
add r3.1000, r0, r4
nop 9
nop 9
nop 9
stv r3.1111, r5, 0, 
nop 9
ldv r3.0010, r2, 28
nop 9
mvr r10.1000, r3.zyzw, 
nop 9
mulf r7.1000, r8, r7, 
nop 9
addf r6.1000, r9, r6
nop 9
add r3.1000, r0, r28
nop 9
nop 9
nop 9
stv r3.1111, r29, 0, 
nop 9
addf r7.1000, r10, r7
nop 9
add r3.1000, r0, r28
nop 9
nop 9
nop 9
stv r3.1111, r27, 0, 
nop 9
addi r8.1000, r2, 18
nop 9
nop 9
nop 9
stv r2.1000, r6, 18, 
nop 9
add r6.1000, r0, r8
nop 9
ldv r6.1111, r6, 0
nop 9
add r3.1000, r0, r28
nop 9
nop 9
nop 9
stv r3.1111, r26, 0, 
nop 9
addi r8.1000, r2, 17
nop 9
nop 9
nop 9
stv r2.1000, r7, 17, 
nop 9
add r7.1000, r0, r8
nop 9
ldv r7.1111, r7, 0
nop 9
add r3.1000, r0, r28
nop 9
nop 9
nop 9
stv r3.1111, r16, 0, 
nop 9
mvr r3.1110, r5.yzww, 
nop 9
mvr r3.0001, r6.xyzx, 
nop 9
mvr r5.1111, r3.xyzw, 
nop 9
mvr r3.1000, r5.wyzw, 
nop 9
mvr r3.0111, r5.xxyz, 
nop 9
mvr r5.1111, r3.xyzw, 
nop 9
add r3.1000, r0, r4
nop 9
nop 9
nop 9
stv r3.1111, r5, 0, 
nop 9
mvr r3.1100, r5.zwzw, 
nop 9
mvr r3.0011, r5.xyxy, 
nop 9
mvr r5.1111, r3.xyzw, 
nop 9
mvr r3.1110, r5.yzww, 
nop 9
mvr r3.0001, r7.xyzx, 
nop 9
mvr r5.1111, r3.xyzw, 
nop 9
mvr r3.1110, r5.yzww, 
nop 9
mvr r3.0001, r5.xyzx, 
nop 9
mvr r5.1111, r3.xyzw, 
nop 9
add r3.1000, r0, r4
nop 9
nop 9
nop 9
stv r3.1111, r5, 0, 
nop 9
ldi r4.1000, 0
nop 9
ldi r5.1000, 4
nop 9
ldi r6.1000, 0
nop 9
ldi r7.1000, 3
nop 9
ldi r8.1000, 0
nop 9
ldi r9.1000, 2
nop 9
add r30.1000, r4, r5
nop 9
ldv r30.1111, r30, 0
nop 9
add r29.1000, r6, r7
nop 9
ldv r29.1111, r29, 0
nop 9
add r28.1000, r8, r9
nop 9
ldv r28.1111, r28, 0
nop 9
ldi r27.1000, 0
nop 9
ldi r26.1000, 5
nop 9
mvr r15.1111, r30.xyzw, 
nop 9
mvr r16.1111, r29.xyzw, 
nop 9
mvr r17.1111, r28.xyzw, 
nop 9
mvr r3.0010, r15.xyxw, 
nop 9
mvr r3.0100, r16.xxzw, 
nop 9
mvr r3.1000, r17.xyzw, 
nop 9
mvr r16.1110, r3.xyzw, 
nop 9
mvr r25.1111, r16.xyzw, 
nop 9
mvr r15.1111, r30.xyzw, 
nop 9
mvr r16.1111, r29.xyzw, 
nop 9
mvr r17.1111, r28.xyzw, 
nop 9
mvr r3.0010, r15.xyyw, 
nop 9
mvr r3.0100, r16.xyzw, 
nop 9
mvr r3.1000, r17.yyzw, 
nop 9
mvr r16.1110, r3.xyzw, 
nop 9
mvr r14.1111, r16.xyzw, 
nop 9
mvr r15.1111, r30.xyzw, 
nop 9
mvr r16.1111, r29.xyzw, 
nop 9
mvr r17.1111, r28.xyzw, 
nop 9
mvr r3.0010, r15.xyzw, 
nop 9
mvr r3.0100, r16.xzzw, 
nop 9
mvr r3.1000, r17.zyzw, 
nop 9
mvr r16.1110, r3.xyzw, 
nop 9
mvr r30.1111, r16.xyzw, 
nop 9
mvr r16.1111, r33.xyzw, 
nop 9
mvr r29.1111, r16.xyzw, 
nop 9
mvr r16.1111, r0.xyzw, 
nop 9
mvr r19.1111, r16.xyzw, 
nop 9
mvr r15.1111, r29.xyzw, 
nop 9
mvr r16.1111, r30.xyzw, 
nop 9
mvr r17.1111, r14.xyzw, 
nop 9
mvr r18.1111, r25.xyzw, 
nop 9
dpf r19.0010, r15.xyzw, r16.xyzw, 
nop 9
dpf r19.0100, r15.xyzw, r17.xyzw, 
nop 9
dpf r19.1000, r15.xyzw, r18.xyzw, 
nop 9
mvr r16.1111, r19.xyzw, 
nop 9
mvr r30.1111, r16.xyzw, 
nop 9
mvr r16.1111, r0.xyzw, 
nop 9
mvr r29.1111, r16.xyzw, 
nop 9
mvr r16.1111, r0.xyzw, 
nop 9
mvr r17.1111, r16.xyzw, 
nop 9
mvr r15.1111, r30.xyzw, 
nop 9
mvr r16.1111, r29.xyzw, 
nop 9
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
nop 9
addi r3.1000, r2, 14
nop 9
add r3.1000, r3, r0
nop 9
nop 9
nop 9
stv r3.1111, r16, 0, 
nop 9
add r30.1000, r27, r26
nop 9
ldv r30.1111, r30, 0
nop 9
mvr r16.1111, r0.xyzw, 
nop 9
mvr r29.1111, r16.xyzw, 
nop 9
ldi r28.1000, 0
nop 9
mvr r16.1111, r0.xyzw, 
nop 9
mvr r17.1111, r16.xyzw, 
nop 9
ldv r3.1000, r28, 25
nop 9
mvr r4.1000, r3.xyzw, 
nop 9
nop 9
nop 9
stv r2.1000, r4, 15, 
nop 9
mvr r15.1111, r30.xyzw, 
nop 9
mvr r16.1111, r29.xyzw, 
nop 9
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
nop 9
addi r3.1000, r2, 12
nop 9
add r3.1000, r3, r0
nop 9
nop 9
nop 9
stv r3.1111, r16, 0, 
nop 9
ldi r4.1000, 0
nop 9
ldi r6.1000, 6
nop 9
add r4.1000, r4, r6
nop 9
ldv r4.1111, r4, 0
nop 9
addf r30.1111, r30.xyzw, r4.xyzw
nop 9
mvr r16.1111, r0.xyzw, 
nop 9
mvr r29.1111, r16.xyzw, 
nop 9
addi r4.1000, r2, 64
nop 9
nop 9
nop 9
stv r2.1111, r4, 10, 
nop 9
mvr r16.1111, r0.xyzw, 
nop 9
mvr r17.1111, r16.xyzw, 
nop 9
addi r28.1000, r2, 80
nop 9
mvr r15.1111, r30.xyzw, 
nop 9
mvr r16.1111, r29.xyzw, 
nop 9
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
nop 9
addi r3.1000, r2, 9
nop 9
add r3.1000, r3, r0
nop 9
nop 9
nop 9
stv r3.1111, r16, 0, 
nop 9
ldi r6.1000, 0
nop 9
ldi r7.1000, 7
nop 9
add r30.1000, r6, r7
nop 9
ldv r30.1111, r30, 0
nop 9
ldi r6.1000, 0
nop 9
ldi r7.1000, 8
nop 9
add r29.1000, r6, r7
nop 9
ldv r29.1111, r29, 0
nop 9
ldi r6.1000, 0
nop 9
ldi r7.1000, 9
nop 9
add r27.1000, r6, r7
nop 9
ldv r27.1111, r27, 0
nop 9
ldi r6.1000, 0
nop 9
ldi r7.1000, 10
nop 9
add r26.1000, r6, r7
nop 9
ldv r26.1111, r26, 0
nop 9
addi r6.1000, r2, 96
nop 9
nop 9
nop 9
stv r2.1111, r6, 13, 
nop 9
xor r25.1111, r25, r25, 
nop 9
addi r7.1000, r2, 112
nop 9
nop 9
nop 9
stv r2.1111, r7, 8, 
nop 9
mvr r16.1111, r0.xyzw, 
nop 9
mvr r14.1111, r16.xyzw, 
nop 9
mulf r3.1111, r30.xyzw, r29.xyzw, 
nop 9
addf r30.1111, r3.xyzw, r25.xyzw
nop 9
mulf r3.1111, r27.xyzw, r26.xyzw, 
nop 9
addf r29.1111, r3.xyzw, r25.xyzw
nop 9
addi r27.1000, r2, 128
nop 9
mvr r16.1111, r0.xyzw, 
nop 9
mvr r17.1111, r16.xyzw, 
nop 9
addi r26.1000, r2, 144
nop 9
addi r3.1000, r2, 14
nop 9
add r15.1000, r3, r0
nop 9
ldv r15.1111, r15, 0
nop 9
mvr r16.1111, r14.xyzw, 
nop 9
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
nop 9
mvr r25.1111, r16.xyzw, 
nop 9
mvr r15.1111, r25.xyzw, 
nop 9
addi r3.1000, r2, 12
nop 9
add r16.1000, r3, r0
nop 9
ldv r16.1111, r16, 0
nop 9
dpf r16.1000, r15.xyzw, r16.xyzw, 
nop 9
mvr r8.1111, r16.xyzw, 
nop 9
mvr r15.1111, r8.xyzw, 
nop 9
ldv r3.1000, r2, 15
nop 9
mvr r4.1000, r3.xyzw, 
nop 9
mvr r16.1111, r4.xyzw, 
nop 9
maxf r16.1000, r15.xyzw, r16.xyzw, 
nop 9
mvr r8.1111, r16.xyzw, 
nop 9
ldi r10.1000, 30
nop 9
ldi r9.1000, 0
nop 9
addi r3.1000, r2, 14
nop 9
add r11.1000, r3, r0
nop 9
ldv r11.1111, r11, 0
nop 9
add r3.1000, r9, r10
nop 9
nop 9
nop 9
stv r3.1111, r11, 0, 
nop 9
addi r3.1000, r2, 12
nop 9
add r9.1000, r3, r0
nop 9
ldv r9.1111, r9, 0
nop 9
ldv r4.1000, r2, 10
nop 9
add r3.1000, r0, r4
nop 9
nop 9
nop 9
stv r3.1111, r9, 0, 
nop 9
addi r3.1000, r2, 9
nop 9
add r4.1000, r3, r0
nop 9
ldv r4.1111, r4, 0
nop 9
add r3.1000, r0, r28
nop 9
nop 9
nop 9
stv r3.1111, r4, 0, 
nop 9
ldv r6.1000, r2, 13
nop 9
add r3.1000, r0, r6
nop 9
nop 9
nop 9
stv r3.1111, r30, 0, 
nop 9
ldv r7.1000, r2, 8
nop 9
add r3.1000, r0, r7
nop 9
nop 9
nop 9
stv r3.1111, r29, 0, 
nop 9
add r3.1000, r0, r27
nop 9
nop 9
nop 9
stv r3.1111, r29, 0, 
nop 9
add r3.1000, r0, r26
nop 9
nop 9
nop 9
stv r3.1111, r25, 0, 
nop 9
nop 9
nop 9
stv r2.1000, r8, 172, 
nop 9
ldv r3.1000, r2, 15
nop 9
mvr r4.1000, r3.xyzw, 
nop 9
bgtsf r8.xxxx, r4.xxxx, 3, 
nop 9
jmp 1310
nop 9
add r30.1000, r0, r28
nop 9
ldv r30.1111, r30, 0
nop 9
mvr r16.1111, r0.xyzw, 
nop 9
mvr r29.1111, r16.xyzw, 
nop 9
mvr r16.1111, r0.xyzw, 
nop 9
mvr r17.1111, r16.xyzw, 
nop 9
mvr r15.1111, r30.xyzw, 
nop 9
mvr r16.1111, r29.xyzw, 
nop 9
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
nop 9
mvr r30.1111, r16.xyzw, 
nop 9
add r15.1000, r0, r26
nop 9
ldv r15.1111, r15, 0
nop 9
ldi r29.1000, 0
nop 9
dpf r16.1000, r15.xyzw, r16.xyzw, 
nop 9
mvr r4.1111, r16.xyzw, 
nop 9
ldi r28.1000, 13
nop 9
mvr r15.1111, r4.xyzw, 
nop 9
ldv r3.1000, r2, 15
nop 9
mvr r4.1000, r3.xyzw, 
nop 9
mvr r16.1111, r4.xyzw, 
nop 9
maxf r16.1000, r15.xyzw, r16.xyzw, 
nop 9
mvr r26.1111, r16.xyzw, 
nop 9
ldv r3.1000, r29, 11
nop 9
mvr r29.1000, r3.xyzw, 
nop 9
ldi r25.1000, 0
nop 9
ldi r14.1000, 12
nop 9
mvr r16.1111, r0.xyzw, 
nop 9
mvr r17.1111, r16.xyzw, 
nop 9
mvr r15.1111, r26.xyzw, 
nop 9
mvr r16.1111, r29.xyzw, 
nop 9
mvr r17.1000, r15
nop 9
log2 r17.1000, r17
nop 9
mulf r17.1000, r17.xyzw, r16.xyzw, 
nop 9
pow2 r16.1000, r17
nop 9
mvr r4.1111, r16.xyzw, 
nop 9
ldi r6.1000, 0
nop 9
add r29.1000, r6, r28
nop 9
ldv r29.1111, r29, 0
nop 9
add r16.1000, r25, r14
nop 9
ldv r16.1111, r16, 0
nop 9
addi r28.1000, r2, 176
nop 9
mvr r15.1111, r4.xyzw, 
nop 9
mulf r16.1111, r16.xyzw, r15.xxxx, 
nop 9
add r4.1000, r0, r27
nop 9
ldv r4.1111, r4, 0
nop 9
ldv r3.1000, r2, 172
nop 9
mvr r6.1000, r3.xyzw, 
nop 9
ldv r7.1000, r2, 13
nop 9
add r7.1000, r0, r7
nop 9
ldv r7.1111, r7, 0
nop 9
mulf r3.1111, r29.xyzw, r16.xyzw, 
nop 9
addf r29.1111, r3.xyzw, r4.xyzw
nop 9
mvr r15.1111, r6.xyzw, 
nop 9
mvr r16.1111, r7.xyzw, 
nop 9
mulf r16.1111, r16.xyzw, r15.xxxx, 
nop 9
add r3.1000, r0, r28
nop 9
nop 9
nop 9
stv r3.1111, r30, 0, 
nop 9
nop 9
nop 9
stv r2.1000, r26, 204, 
nop 9
add r3.1000, r0, r27
nop 9
nop 9
nop 9
stv r3.1111, r29, 0, 
nop 9
addf r4.1111, r29.xyzw, r16.xyzw
nop 9
add r3.1000, r0, r27
nop 9
nop 9
nop 9
stv r3.1111, r4, 0, 
nop 9
add r30.1000, r0, r27
nop 9
ldv r30.1111, r30, 0
nop 9
ldi r29.1000, 0
nop 9
mvr r16.1111, r0.xyzw, 
nop 9
mvr r28.1111, r16.xyzw, 
nop 9
ldi r4.1000, 26
nop 9
add r29.1000, r29, r4
nop 9
ldv r29.1111, r29, 0
nop 9
mvr r16.1111, r0.xyzw, 
nop 9
mvr r18.1111, r16.xyzw, 
nop 9
ldi r27.1000, 0
nop 9
ldi r26.1000, 17
nop 9
mvr r15.1111, r30.xyzw, 
nop 9
mvr r16.1111, r29.xyzw, 
nop 9
mvr r17.1111, r28.xyzw, 
nop 9
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
nop 9
addi r3.1000, r2, 15
nop 9
add r3.1000, r3, r0
nop 9
nop 9
nop 9
stv r3.1111, r16, 0, 
nop 9
ldi r4.1000, 0
nop 9
ldi r6.1000, 16
nop 9
ldi r7.1000, 0
nop 9
ldi r8.1000, 15
nop 9
ldi r9.1000, 0
nop 9
ldi r10.1000, 14
nop 9
add r30.1000, r27, r26
nop 9
ldv r30.1111, r30, 0
nop 9
add r29.1000, r4, r6
nop 9
ldv r29.1111, r29, 0
nop 9
add r28.1000, r7, r8
nop 9
ldv r28.1111, r28, 0
nop 9
add r27.1000, r9, r10
nop 9
ldv r27.1111, r27, 0
nop 9
mvr r15.1111, r30.xyzw, 
nop 9
mvr r16.1111, r29.xyzw, 
nop 9
mvr r17.1111, r28.xyzw, 
nop 9
mvr r18.1111, r27.xyzw, 
nop 9
mvr r3.0001, r15.xyzx, 
nop 9
mvr r3.0010, r16.xyxw, 
nop 9
mvr r3.0100, r17.xxzw, 
nop 9
mvr r3.1000, r18.xyzw, 
nop 9
mvr r16.1111, r3.xyzw, 
nop 9
addi r3.1000, r2, 14
nop 9
add r3.1000, r3, r0
nop 9
nop 9
nop 9
stv r3.1111, r16, 0, 
nop 9
mvr r15.1111, r30.xyzw, 
nop 9
mvr r16.1111, r29.xyzw, 
nop 9
mvr r17.1111, r28.xyzw, 
nop 9
mvr r18.1111, r27.xyzw, 
nop 9
mvr r3.0001, r15.xyzy, 
nop 9
mvr r3.0010, r16.xyyw, 
nop 9
mvr r3.0100, r17.xyzw, 
nop 9
mvr r3.1000, r18.yyzw, 
nop 9
mvr r16.1111, r3.xyzw, 
nop 9
addi r3.1000, r2, 13
nop 9
add r3.1000, r3, r0
nop 9
nop 9
nop 9
stv r3.1111, r16, 0, 
nop 9
mvr r15.1111, r30.xyzw, 
nop 9
mvr r16.1111, r29.xyzw, 
nop 9
mvr r17.1111, r28.xyzw, 
nop 9
mvr r18.1111, r27.xyzw, 
nop 9
mvr r3.0001, r15.xyzz, 
nop 9
mvr r3.0010, r16.xyzw, 
nop 9
mvr r3.0100, r17.xzzw, 
nop 9
mvr r3.1000, r18.zyzw, 
nop 9
mvr r16.1111, r3.xyzw, 
nop 9
addi r3.1000, r2, 12
nop 9
add r3.1000, r3, r0
nop 9
nop 9
nop 9
stv r3.1111, r16, 0, 
nop 9
ldi r26.1000, 20
nop 9
mvr r15.1111, r30.xyzw, 
nop 9
mvr r16.1111, r29.xyzw, 
nop 9
mvr r17.1111, r28.xyzw, 
nop 9
mvr r18.1111, r27.xyzw, 
nop 9
mvr r3.0001, r15.xyzw, 
nop 9
mvr r3.0010, r16.xyww, 
nop 9
mvr r3.0100, r17.xwzw, 
nop 9
mvr r3.1000, r18.wyzw, 
nop 9
mvr r16.1111, r3.xyzw, 
nop 9
addi r3.1000, r2, 10
nop 9
add r3.1000, r3, r0
nop 9
nop 9
nop 9
stv r3.1111, r16, 0, 
nop 9
ldv r4.1000, r2, 16
nop 9
add r4.1000, r0, r4
nop 9
ldv r4.1111, r4, 0
nop 9
addi r3.1000, r2, 16
nop 9
add r3.1000, r3, r0
nop 9
nop 9
nop 9
stv r3.1111, r4, 0, 
nop 9
ldi r30.1000, 0
nop 9
ldi r29.1000, 19
nop 9
mvr r16.1111, r0.xyzw, 
nop 9
mvr r20.1111, r16.xyzw, 
nop 9
ldi r4.1000, 0
nop 9
ldi r6.1000, 18
nop 9
ldi r7.1000, 0
nop 9
ldi r8.1000, 21
nop 9
add r28.1000, r7, r8
nop 9
ldv r28.1111, r28, 0
nop 9
ldi r7.1000, 0
nop 9
add r27.1000, r7, r26
nop 9
ldv r27.1111, r27, 0
nop 9
add r30.1000, r30, r29
nop 9
ldv r30.1111, r30, 0
nop 9
add r29.1000, r4, r6
nop 9
ldv r29.1111, r29, 0
nop 9
mvr r15.1111, r28.xyzw, 
nop 9
mvr r16.1111, r27.xyzw, 
nop 9
mvr r17.1111, r30.xyzw, 
nop 9
mvr r18.1111, r29.xyzw, 
nop 9
mvr r3.0001, r15.xyzx, 
nop 9
mvr r3.0010, r16.xyxw, 
nop 9
mvr r3.0100, r17.xxzw, 
nop 9
mvr r3.1000, r18.xyzw, 
nop 9
mvr r16.1111, r3.xyzw, 
nop 9
mvr r26.1111, r16.xyzw, 
nop 9
mvr r15.1111, r28.xyzw, 
nop 9
mvr r16.1111, r27.xyzw, 
nop 9
mvr r17.1111, r30.xyzw, 
nop 9
mvr r18.1111, r29.xyzw, 
nop 9
mvr r3.0001, r15.xyzy, 
nop 9
mvr r3.0010, r16.xyyw, 
nop 9
mvr r3.0100, r17.xyzw, 
nop 9
mvr r3.1000, r18.yyzw, 
nop 9
mvr r16.1111, r3.xyzw, 
nop 9
mvr r25.1111, r16.xyzw, 
nop 9
mvr r15.1111, r28.xyzw, 
nop 9
mvr r16.1111, r27.xyzw, 
nop 9
mvr r17.1111, r30.xyzw, 
nop 9
mvr r18.1111, r29.xyzw, 
nop 9
mvr r3.0001, r15.xyzz, 
nop 9
mvr r3.0010, r16.xyzw, 
nop 9
mvr r3.0100, r17.xzzw, 
nop 9
mvr r3.1000, r18.zyzw, 
nop 9
mvr r16.1111, r3.xyzw, 
nop 9
mvr r14.1111, r16.xyzw, 
nop 9
mvr r15.1111, r28.xyzw, 
nop 9
mvr r16.1111, r27.xyzw, 
nop 9
mvr r17.1111, r30.xyzw, 
nop 9
mvr r18.1111, r29.xyzw, 
nop 9
mvr r3.0001, r15.xyzw, 
nop 9
mvr r3.0010, r16.xyww, 
nop 9
mvr r3.0100, r17.xwzw, 
nop 9
mvr r3.1000, r18.wyzw, 
nop 9
mvr r16.1111, r3.xyzw, 
nop 9
mvr r30.1111, r16.xyzw, 
nop 9
addi r3.1000, r2, 16
nop 9
add r15.1000, r3, r0
nop 9
ldv r15.1111, r15, 0
nop 9
addi r3.1000, r2, 10
nop 9
add r16.1000, r3, r0
nop 9
ldv r16.1111, r16, 0
nop 9
addi r3.1000, r2, 12
nop 9
add r17.1000, r3, r0
nop 9
ldv r17.1111, r17, 0
nop 9
addi r3.1000, r2, 13
nop 9
add r18.1000, r3, r0
nop 9
ldv r18.1111, r18, 0
nop 9
addi r3.1000, r2, 14
nop 9
add r19.1000, r3, r0
nop 9
ldv r19.1111, r19, 0
nop 9
dpf r20.0001, r15.xyzw, r16.xyzw, 
nop 9
dpf r20.0010, r15.xyzw, r17.xyzw, 
nop 9
dpf r20.0100, r15.xyzw, r18.xyzw, 
nop 9
dpf r20.1000, r15.xyzw, r19.xyzw, 
nop 9
mvr r16.1111, r20.xyzw, 
nop 9
mvr r29.1111, r16.xyzw, 
nop 9
mvr r16.1111, r0.xyzw, 
nop 9
mvr r20.1111, r16.xyzw, 
nop 9
mvr r15.1111, r29.xyzw, 
nop 9
mvr r16.1111, r30.xyzw, 
nop 9
mvr r17.1111, r14.xyzw, 
nop 9
mvr r18.1111, r25.xyzw, 
nop 9
mvr r19.1111, r26.xyzw, 
nop 9
dpf r20.0001, r15.xyzw, r16.xyzw, 
nop 9
dpf r20.0010, r15.xyzw, r17.xyzw, 
nop 9
dpf r20.0100, r15.xyzw, r18.xyzw, 
nop 9
dpf r20.1000, r15.xyzw, r19.xyzw, 
nop 9
mvr r16.1111, r20.xyzw, 
nop 9
mvr r30.1111, r16.xyzw, 
nop 9
addi r3.1000, r2, 15
nop 9
add r15.1000, r3, r0
nop 9
ldv r15.1111, r15, 0
nop 9
mvr r33.1111, r15.xyzw, 
nop 9
ldi r4.1000, 0
nop 9
ldi r6.1000, 29
nop 9
add r15.1000, r4, r6
nop 9
ldv r15.1111, r15, 0
nop 9
mvr r34.1111, r15.xyzw, 
nop 9
ldi r6.1000, 30
nop 9
ldi r4.1000, 0
nop 9
add r15.1000, r4, r6
nop 9
ldv r15.1111, r15, 0
nop 9
mvr r35.1111, r15.xyzw, 
nop 9
mvr r16.1111, r0.xyzw, 
nop 9
mvr r29.1111, r16.xyzw, 
nop 9
mvr r16.1111, r0.xyzw, 
nop 9
mvr r17.1111, r16.xyzw, 
nop 9
mvr r15.1111, r30.xyzw, 
nop 9
mvr r16.1111, r29.xyzw, 
nop 9
mvr r16.1000, r15.wyzw, 
nop 9
mvr r17.1111, r15.xyzw, 
nop 9
rcp r16.1111, r16
nop 9
mulf r15.1111, r15.xyzw, r16.xyzw, 
nop 9
addif r15.1100, r15, 1.1065353216, 
nop 9
ldif r16.1000, r0, 160.000000
nop 9
ldif r16.0100, r0, 120.000000
nop 9
mulf r15.1100, r15.xyzw, r16.xyzw, 
nop 9
ldif r16.1000, r0, 0.000000
nop 9
ldif r16.0100, r0, 0.000000
nop 9
addf r15.1100, r15.xyzw, r16.xyzw, 
nop 9
ldif r16.0010, r0, 1.000000
nop 9
ldif r16.0001, r0, 1.000000
nop 9
mulf r16.0011, r15.xyzw, r16.xyzw, 
nop 9
addf r15.0010, r16.xyzw, r16.xyww, 
nop 9
ldif r16.1000, r0, 0.500000
nop 9
mulf r15.0010, r15.xyzw, r16.xyxw, 
nop 9
mvr r15.0001, r17.xyzw, 
nop 9
mvr r32.1111, r15.xyzw, 
nop 9
end code.
