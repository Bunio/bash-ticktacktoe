echo "Ticktacktoe --------------------------"


#-------------

TABLE=("-" "-" "-" "-" "-" "-" "-" "-" "-")
PLAYER="x"


#-------------


function hello {
 echo "Hello"
}

function printTable {
 echo "TABLE:"
 for i in {0..2}
 do
	 echo "${TABLE[0 + 3*$i]} ${TABLE[1 + 3*$i]} ${TABLE[2 + 3*$i]}"
 done
}
#-------------


for x in {0..8}
do
	printTable

	echo ""
	echo "Current player: $PLAYER"
	echo "Please select your target (0-8)"

	read x

	TABLE[x]=$PLAYER

done











