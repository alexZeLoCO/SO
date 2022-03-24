#! /bin/bash

if [ $# -ne "1" ]
then
	echo "El número de parámetros es incorrecto." >&2
	echo "USO: $0 <usuario>" >&2
	exit 1;
fi

data=$(getent passwd)

if echo $data | grep "^$1:.*$" > /dev/null
then
	echo "El usuario $1 pertenece al sistema"
else
	echo "El usuario $1 no pertenece al sistema"
fi
exit 0
