mov r1, i0
sge r0.x, c0, c18
setpeq p0, c0, c18
jmp !p0, 3
mov o7, i2
jmp p0, 20
dp3 r1.w, r1, r1
rsq r1.w, r1.w
mul r1.xyz, r1.w, r1
mov r1.w, c18
add r1.y, r1.y, -c1.x
slt r0.x, r1.y, -c19
setplt p0, r1.y, -c19
jmp !p0, 12
mov r1.y, -c19
mov r2.x, i1.x
mov r2.y, i1.y
mov r2.z, c18
dp3 r2.w, r2, r2
rsq r2.w, r2.w
mul r2.xyz, r2.w, r2
mul r2.w, r2.x, c20
add r1.x, r1.x, r2.w
mul r2.w, r2.y, c20
add r1.z, r1.z, r2.w
dp4 r7.x, i1, c6
dp4 r7.y, i1, c7
dp4 r7.z, i1, c8
dp4 r7.w, i1, c9
dp3 r8.w, r7, r7
rsq r8.w, r8.w
mul r8.xyz, r8.w, r7
mov o9, r8
dp3 r5.w, c15, c15
rsq r5.w, r5.w
mul r5.xyz, r5.w, c15
add r9, c15, c14
dp3 r6.w, r9, r9
rsq r6.w, r6.w
mul r6.xyz, r6.w, r9
mul r4, c12, c13
mul r3, c10, c11
mov r16, r3
dp3 r10.w, r8, r8
rsq r10.w, r10.w
mul r10.xyz, r10.w, r8
dp3 r10.w, r10, r5
max r10.w, r10.w, c21
mov r14.x, r10.w
sge r0.x, r14.x, c21
setpgt p0, r14.x, c21
jmp !p0, 15
dp3 r11.w, r6, r6
rsq r11.w, r11.w
mul r11.xyz, r11.w, r6
dp3 r10.w, r10, r11
max r10.w, r10.w, c21
mov r15.x, r10.w
lg2 r15.x, r15.x
mul r15.x, r15.x, c16.x
ex2 r15.x, r15.x
mul r15, c17, r15.x
mul r15, c16, r15
add r16, r16, r15
mul r4, r4, r14.x
add r16, r16, r4
mul o8, r16, c22
dp4 o0.x, r1, c2
dp4 o0.y, r1, c3
dp4 o0.z, r1, c4
dp4 o0.w, r1, c5