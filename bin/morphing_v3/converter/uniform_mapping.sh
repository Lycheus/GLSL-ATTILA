cat ARBProgram.vert | grep 'PARAM' | awk 'BEGIN{c=0};/program.local/{printf("%s, %d\n", $2, c);c++};/state.matrix/{printf("%s, %d\n", $2, c);c+=4;};' | tr -d ',[]' > uniform2constantReg.vert
cat uniform_table_vs | awk '{printf("%s %d %d\n", $2, $1, $3);}' > uniform2index.vert #NAME INDEX SIZE
cat ARBProgram.frag | grep 'PARAM' | awk 'BEGIN{c=0};/program.local/{printf("%s, %d\n", $2, c);c++};/state.matrix/{printf("%s, %d\n", $2, c);c+=4;};' | tr -d ',[]' > uniform2constantReg.frag
cat uniform_table_fs | awk '{printf("%s %d %d\n", $2, $1, $3);}' > uniform2index.frag #NAME INDEX SIZE
