cat $1 | sed '/NOP/d' | awk '$1=="mtspr"{flag++} flag==1{print $0}' | grep -n -B1 "LDV" > ld_uni_instr
cat $1 | sed '/NOP/d' | awk '$1=="mtspr"{flag++} flag==1{print $0}' | grep -n "@[lh]" >> ld_uni_instr
sort -g ld_uni_instr | tr "\t" " " | cut -d " "  -f2,3,5 | sed 's/LDV.*//g' | sed 's/ADDI //g' | tr -d "," | sed 's/ADD //g' | sed 's/^[rR]/R/g' | sed 's/.[01][01][01][01]//g' | sed 's/^--//g' | sed '/^$/d' > ld_uni_table
