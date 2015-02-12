#!/usr/bin/tcsh
@ startingLine_vert = `cat uniform2index.vert | cut -d " " -f3 | sed 's/.*/& + /' | tr -d "\n" | sed 's/ + $//' | xargs expr` + 10
cat adjustPCs_vert.awk | sed "s/#@/$startingLine_vert/" > adjustPCs_vert_new.awk
cat nsysuASM.vert | sed 's/PC:[^A-Z]*//;s/[\t].*//' | awk -f adjustPCs_vert_new.awk > nsysu2attilaPC.vert
@ startingLine_frag = `cat uniform2index.frag | cut -d " " -f3 | sed 's/.*/& + /' | tr -d "\n" | sed 's/ + $//' | xargs expr` + 18 #7
cat adjustPCs_frag.awk | sed "s/#@/$startingLine_frag/" > adjustPCs_frag_new.awk
cat nsysuASM.frag | sed 's/PC:[^A-Z]*//;s/[\t].*//' | awk -f adjustPCs_frag_new.awk > nsysu2attilaPC.frag
