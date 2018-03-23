echo "Ticktacktoe --------------------------"


# VARIABLES:

TABLE=("-" "-" "-" "-" "-" "-" "-" "-" "-")
PLAYER="x"


# METHODS: 


function greetPlayer {	
 newline
 echo " > Current player: $PLAYER"
 echo " > Please select your target (0-8) ..."
}

function printTable {
 newline
 echo "TABLE:"
 for i in {0..2}
 do
  echo "${TABLE[0 + 3*$i]} ${TABLE[1 + 3*$i]} ${TABLE[2 + 3*$i]}"
 done
}

function switchPlayer {
 if [ "$PLAYER" == "x" ];
  then
   PLAYER="o"
  else
   PLAYER="x"
 fi
}

function victory {
 echo " > PLAYER $PLAYER WON! "
 printTable
 exit 1

}

function draw {
 echo " > DRAW!"
 printTable
 exit 1
}


function checkVictory {

# Horizontal
 for i in {0..2}
 do
  if [ "${TABLE[0 + 3*$i]}" == "$PLAYER" ] && [ "${TABLE[1 + 3*$i]}" == "$PLAYER" ] && [ "${TABLE[2 + 3*$i]}" == "$PLAYER" ]; then
   victory
  fi
 done

# Vertical

 for i in {0..2}
  do
   if [ "${TABLE[0 + $i]}" == "$PLAYER" ] && [ "${TABLE[3 + $i]}" == "$PLAYER" ] && [ "${TABLE[6 + $i]}" == "$PLAYER" ]; then
    victory
   fi
 done

# Cross

if [ "${TABLE[0]}" == "$PLAYER" ] && [ "${TABLE[4]}" == "$PLAYER" ] && [ "${TABLE[8]}" == "$PLAYER" ]; then
 victory
fi
if [ "${TABLE[2]}" == "$PLAYER" ] && [ "${TABLE[4]}" == "$PLAYER" ] && [ "${TABLE[6]}" == "$PLAYER" ]; then
 victory
fi

}

function newline {
 echo ""
}

#=================================================================================================================================


for x in {0..8}
do
	greetPlayer
	printTable

	read x

	while [ "${TABLE[x]}" != "-" ]
	do
		echo " > Oops, this field is already taken!"
		echo " > Please select different field ... "
		read x
	done

	TABLE[x]=$PLAYER

	checkVictory
	switchPlayer

done

draw
