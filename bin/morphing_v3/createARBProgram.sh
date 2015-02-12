echo "#=======================KENNY ARB PROGRAM========================" > ARBProgram.vert
echo 'glGenProgramsARB(1,"GLInterceptor IGNORED")' >> ARBProgram.vert
echo 'glBindProgramARB(GL_VERTEX_PROGRAM_ARB,1)' >> ARBProgram.vert
echo 'glProgramStringARB(GL_VERTEX_PROGRAM_ARB,GL_PROGRAM_FORMAT_ASCII_ARB,1650,"!!ARBvp1.0' >> ARBProgram.vert
echo "ATTRIB attrib0 = vertex.attrib[0];" >> ARBProgram.vert
echo "ATTRIB attrib1 = vertex.attrib[1];" >> ARBProgram.vert
echo "ATTRIB attrib2 = vertex.attrib[2];" >> ARBProgram.vert
cat tracefile.txt | grep 'glGetUniformLocation(' | sort | uniq | sed 's/glGetUniformLocation([0-9],\(.*\))=\([0-9][0-9]*\)/PARAM \1 = program.local[\2];/' >> ARBProgram.vert
echo "PARAM ModelViewMatrix[] = { state.matrix.modelview };" >> ARBProgram.vert
echo "PARAM ProjectionMatrix[] = { state.matrix.projection };" >> ARBProgram.vert
echo "PARAM NormalMatrix[] = { state.matrix.modelview.invtrans };" >> ARBProgram.vert
echo "MOV result.position, attrib0;" >> ARBProgram.vert
echo "END" >> ARBProgram.vert
echo '")' >> ARBProgram.vert
echo 'glBindProgramARB(GL_FRAGMENT_PROGRAM_ARB,2)' > ARBProgram.frag
echo 'glProgramStringARB(GL_FRAGMENT_PROGRAM_ARB,GL_PROGRAM_FORMAT_ASCII_ARB,850,"!!ARBfp1.0' >> ARBProgram.frag
cat tracefile.txt | grep 'glGetUniformLocation(' | sort | uniq | sed 's/glGetUniformLocation([0-9],\(.*\))=\([0-9][0-9]*\)/PARAM \1 = program.local[\2];/' >> ARBProgram.frag
echo 'TEX result.color, fragment.texcoord[1], texture[0], 2D;' >> ARBProgram.frag
echo 'END' >> ARBProgram.frag
echo '")' >> ARBProgram.frag
echo "#=======================KENNY ARB PROGRAM END===================" >> ARBProgram.frag
cat ARBProgram.vert ARBProgram.frag > ARBProgram
