#!/usr/bin/tcsh
#set line = `cat output.txt | grep -n "mov r16.x, r15.wyzw" | sed 's/\([0-9][0-9]*\):.*/\1/'`
set line = `cat output.txt | sed -n 'N;N;N;N;N;:L;N;/mov r16.x, r15.wyzw\nnop\nmov r17, r15.xyzw\nnop\nrcp r16, r16\nnop\nmul r15, r15.xyzw, r16.xyzw/=;s/^[^\n]*\n//;bL'`
#@ start_line = $line - 7
@ start_line = $line - 19
echo $start_line
head -n $start_line output.txt > output_first_part.txt
@ end_line = $line + 30
#echo $end_line
set total_line = `wc -l output.txt | grep -o "[0-9][0-9*]*"`
#echo $total_line
@ tail_line = $total_line - $end_line
tail -n $tail_line output.txt > output_second_part.txt
cat output_first_part.txt output_second_part.txt > output.txt
rm output_first_part.txt output_second_part.txt
echo "Viewport code trimmed from line $start_line to $end_line"
