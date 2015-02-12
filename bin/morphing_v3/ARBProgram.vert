#=======================KENNY ARB PROGRAM========================
glGenProgramsARB(1,"GLInterceptor IGNORED")
glBindProgramARB(GL_VERTEX_PROGRAM_ARB,1)
glProgramStringARB(GL_VERTEX_PROGRAM_ARB,GL_PROGRAM_FORMAT_ASCII_ARB,1650,"!!ARBvp1.0
ATTRIB attrib0 = vertex.attrib[0];
ATTRIB attrib1 = vertex.attrib[1];
ATTRIB attrib2 = vertex.attrib[2];
PARAM ambient_light = program.local[1];
PARAM ambient_material = program.local[2];
PARAM diffuse_light = program.local[3];
PARAM diffuse_material = program.local[4];
PARAM eye_Pos = program.local[5];
PARAM light_Pos = program.local[6];
PARAM shaderr = program.local[7];
PARAM specularExp = program.local[8];
PARAM specular_light = program.local[9];
PARAM specular_material = program.local[10];
PARAM Tex = program.local[0];
PARAM timeflag = program.local[11];
PARAM ModelViewMatrix[] = { state.matrix.modelview };
PARAM ProjectionMatrix[] = { state.matrix.projection };
PARAM NormalMatrix[] = { state.matrix.modelview.invtrans };
MOV result.position, attrib0;
END
")
