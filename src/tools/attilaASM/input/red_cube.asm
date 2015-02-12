add r0, r1, 102
stv r0, r1, 102
add r0, r1, 20
mov r1, c0
stv r0, r1, 0
ldv r3, r0, 0
add r0, r3, 9
stv r0, c0, 100
ldv r0, r1, 109
dp4 r0.x, i0, c0
dp4 r0.y, i0, c1
dp4 r0.z, i0, c2
dp4 r0.w, i0, c3
dp4 o0.x, r0, c4
dp4 o0.y, r0, c5
dp4 o0.z, r0, c6
dp4 o0.w, r0, c7
