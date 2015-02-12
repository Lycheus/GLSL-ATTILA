BEGIN{NPC=20
ONE["DSQ"]=1
ONE["DIV"]=1
ONE["BEQS"]=1
ONE["BLTSF"]=1
ONE["BGTSF"]=1
#FOUR["XOR"]=1
}{print NR-1, NPC
  NPC++
  if ($1 in ONE) NPC++
  if ($1 in TWO) NPC+=2
  if ($1 in THREE) NPC+=3
#  if ($1 in FOUR) NPC+=4
}
