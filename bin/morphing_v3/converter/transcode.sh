cat nsysuASM.vert | cut -f3-4 | tr "A-Z" "a-z" | sed 's/\(ldif.*[0-9][0-9]*[.][0-9]*\) (.*)/\1/' | sed 's/(\(.*\))/#\1/g' | sed 's/\(-*[0-9][0-9]*\) \(#-*0[.]000000\)/\1/' | sed 's/\(-*[0-9][0-9]*\) #\(-*.*\)/\2/' | sed 's/<.*>//g' | sed 's/\t/ /g' | sed '/fin vertex\ start!!.*/d' | sed '/fin/d' > nsysu2attila.vert
cat nsysuASM.frag | cut -f3-4 | tr "A-Z" "a-z" | sed 's/\(ldif.*[0-9][0-9]*[.][0-9]*\) (.*)/\1/' | sed 's/(\(.*\))/#\1/g' | sed 's/\(-*[0-9][0-9]*\) \(#-*0[.]000000\)/\1/' | sed 's/\(-*[0-9][0-9]*\) #\(-*.*\)/\2/' | sed 's/<.*>//g' | sed 's/\t/ /g' | sed '/fin vertex\ start!!.*/d' | sed '/fin/d' > nsysu2attila.frag
# I moved call of this section into main.cpp
#./adjustPC.sh
