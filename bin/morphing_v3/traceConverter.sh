#!/usr/bin/tcsh
./createARBProgram.sh
cp ./ARBProgram.vert ./converter/ARBProgram.vert
cp ./ARBProgram.frag ./converter/ARBProgram.frag
cat tracefile.txt | sed '/wglGetProcAddress(.*/d' > tracefile_mod1
cat tracefile_mod1 | sed 's/glUseProgram.*/&\n\tglEnable(GL_VERTEX_PROGRAM_ARB)\n\tglBindProgramARB(GL_VERTEX_PROGRAM_ARB,1)\n\tglEnable(GL_FRAGMENT_PROGRAM_ARB)\n\tglBindProgramARB(GL_FRAGMENT_PROGRAM_ARB,2)/' > tracefile_mod2
cat tracefile_mod2 | sed 's/glUniform4fv(\([0-9][0-9]*\),.*,{\(.*\)})/\tglProgramLocalParameter4fARB(GL_VERTEX_PROGRAM_ARB,\1,\2)\n\tglProgramLocalParameter4fARB(GL_FRAGMENT_PROGRAM_ARB,\1,\2)/' > tracefile_mod3
cat tracefile_mod3 | sed 's/glUniform3fv(\([0-9][0-9]*\),.*,{\(.*\)})/\tglProgramLocalParameter4fARB(GL_VERTEX_PROGRAM_ARB,\1,\2,0)\n\tglProgramLocalParameter4fARB(GL_FRAGMENT_PROGRAM_ARB,\1,\2,0)/' > tracefile_mod4
cat tracefile_mod4 | sed 's/glUniform3f(\([0-9][0-9]*\),\(.*\))/\tglProgramLocalParameter4fARB(GL_VERTEX_PROGRAM_ARB,\1,\2,0)\n\tglProgramLocalParameter4fARB(GL_FRAGMENT_PROGRAM_ARB,\1,\2,0)/' > tracefile_mod5
cat tracefile_mod5 | sed 's/glUniform1f(\([0-9][0-9]*\),\(.*\))/\tglProgramLocalParameter4fARB(GL_VERTEX_PROGRAM_ARB,\1,\2,0,0,0)\n\tglProgramLocalParameter4fARB(GL_FRAGMENT_PROGRAM_ARB,\1,\2,0,0,0)/' > tracefile_mod6
cat tracefile_mod6 | sed 's/glUniform1i(\([0-9][0-9]*\),\(.*\))/\tglProgramLocalParameter4fARB(GL_VERTEX_PROGRAM_ARB,\1,\2,0,0,0)\n\tglProgramLocalParameter4fARB(GL_FRAGMENT_PROGRAM_ARB,\1,\2,0,0,0)/' > tracefile_mod7
set insertLine = `grep -n "glGetString(GL_EXTENSIONS)" tracefile_mod7 | cut -d ":" -f1`
@ headLine = $insertLine - 1
@ tailLine = `wc -l tracefile_mod7 | cut -d " " -f1` - $insertLine - 1
head -n $headLine tracefile_mod7 > tracefile_mod8.1
tail -n $tailLine tracefile_mod7 > tracefile_mod8.2

cat tracefile_mod8.1 ARBProgram tracefile_mod8.2 > tracefile_mod9b
cat tracefile_mod8.1 ARBProgram  > tracefile_mod9

cat tracefile_mod9b | sed '/[*][0-9][0-9]*[)]$/q' | tail -1 | grep -o '[*][0-9]*' > temfile
set pointer = `cat temfile`
rm ./temfile
foreach who2do ( `grep 'glActiveTexture[ARB]*(GL_TEXTURE' tracefile_mod9b | sort | uniq | awk -F '[()]' '{print $2}' | tr -dc "0-9\n" ` )
#foreach who2do ( `cat pretendanswer` )
  echo "glActiveTextureARB(GL_TEXTURE@)"|sed "s,@,$who2do," >> tracefile_mod9
  echo "glGenTextures(2,{1,2})">> tracefile_mod9
  echo "glBindTexture(GL_TEXTURE_2D,1)">> tracefile_mod9
  echo "glTexParameterf(GL_TEXTURE_2D,GL_TEXTURE_MIN_FILTER,9729)">> tracefile_mod9
  echo "glTexParameterf(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,9729)">> tracefile_mod9
  #echo "glTexImage2D(GL_TEXTURE_2D,0,6407,256,256,0,GL_RGB,GL_UNSIGNED_BYTE,$pointer:q)">> tracefile_mod9
  echo 'glTexImage2D(GL_TEXTURE_2D,0,6407,1,1,0,GL_RGB,GL_UNSIGNED_BYTE,*1)'>> tracefile_mod9
end

cat tracefile_mod8.2 >> tracefile_mod9
