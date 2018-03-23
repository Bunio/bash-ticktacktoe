echo "Ticktacktoe --------------------------"


#-------------

TABLE=("-" "-" "-" "-" "-" "-" "-" "-" "-")
PLAYER="x"


#-------------

function printTable {
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
 echo "------------------------->  PLAYER $PLAYER WON! "
 printTable
 exit 1

}

function draw {
 echo "-------------------------> DRAW!"
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

}

#-------------


for x in {0..8}
do
	printTable

	echo ""
	echo "Current player: $PLAYER"
	echo "Please select your target (0-8) ..."

	read x

	while [ "${TABLE[x]}" != "-" ]
	do
		echo "Oops, this field is already taken!"
		echo "Please select different field ... "
		read x
	done

	TABLE[x]=$PLAYER

	checkVictory
	switchPlayer


done











