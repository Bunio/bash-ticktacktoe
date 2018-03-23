echo "Ticktacktoe --------------------------"


#-------------

TABLE=("00" "01" "02" "03" "04" "05" "06" "07" "08")



#-------------


function hello {
 echo "Hello"
}

function printTable {
 for i in {0..2}
 do
	 echo "${TABLE[0 + 3*$i]} ${TABLE[1 + 3*$i]} ${TABLE[2 + 3*$i]}"
 done
}
#-------------



printTable










