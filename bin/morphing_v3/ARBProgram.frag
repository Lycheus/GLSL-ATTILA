glBindProgramARB(GL_FRAGMENT_PROGRAM_ARB,2)
glProgramStringARB(GL_FRAGMENT_PROGRAM_ARB,GL_PROGRAM_FORMAT_ASCII_ARB,850,"!!ARBfp1.0
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
TEX result.color, fragment.texcoord[1], texture[0], 2D;
END
")
#=======================KENNY ARB PROGRAM END===================
