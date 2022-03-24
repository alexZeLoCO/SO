#! /bin/bash

if [ "$#" -ne "3" ]
then
	echo "USO: $0 <tipo (tcp/udp)> <puerto_min> <puerto_max>" >&2
	exit 1
fi

echo "Puertos libres de tipo $1 entre el $2 y $3"

c="$2"
data=$(getent services | tr -s [:blank:] : | cut -d ':' -f 2 | grep "^.*/$1$" | cut -d "/" -f 1 | sort -n)
while [ $c -le $3 ]
do
	if $(echo $data | grep "^$c$") 
	then
		echo "$c"
	fi	
	c=$(($c + 1))
done
exit 0
