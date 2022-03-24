#! /bin/bash

if [ $# -ne "0" ]
then
	echo "El número de parámetros es incorrecto." >&2
	echo "USO: $0" >&2
	exit 1;
fi

echo "$(getent passwd | sort -t ":" -k 3 -n )"
exit 0
