#! /bin/bash

if [ $# -ne "1" ]
then
	echo "El número de parámetros es incorrecto" >&2
	echo "USO: $0 <UID>" >&2
	exit 1
fi

c="0"
(getent passwd | cut -d ":" -f 3 | sort -n ) | while read line
do
	if [ $line -gt $(($1 + $c)) ]
	then
		echo "$(($1 + $c + 1))"
		exit 0
	fi
	(($c + 1))
done

exit 0
