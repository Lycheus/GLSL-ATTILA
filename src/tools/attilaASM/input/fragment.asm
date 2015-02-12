sge r0, c1, c2
setpeq p0, c1, c2
jmp !p0, 3
tex r1, i7, t0
jmp p0, 9
add r2, i9, c2
dp3 r2.w, r2, r2
rsq r2.w, r2.w
mul r2, r2, r2.w
mov r1.x, r2.x
mov r1.y, r2.y
mov r1.z, r2.z
mov r1.w, c2
add r1, r1, i8
mul r1, r1, c3
mov o1, r1