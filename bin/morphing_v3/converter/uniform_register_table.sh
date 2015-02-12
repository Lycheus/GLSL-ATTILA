awk  -F “[. @()rR]*” ‘/“ADDI.*r0.*.u.0.1@ha”/{Z[$2]=$(NF-1)];print} 
/“ADDI.*r0.*.u.0.1@l”/;
$1 ==“ADD”{if ($3 in Z) {Z[$2]=Z[$3];delete(Z,$3);print}
/LDV/ {if ($4 in Z) {print; delete(Z,$4)}’
