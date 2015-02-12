dp4 oPos.x, mvp[0], iVertex
DP4 oPos.y, mvp[1], iVertex
DP4 oPos.z, mvp[2], iVertex
DP4 oPos.w, mvp[3], iVertex
MOV normal, iNormal
SUB lightVec, lightPos,  iVertex
SUB viewVec,  cameraPos, iVertex
END
