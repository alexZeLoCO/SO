#! /bin/bash

if [ $# -ne "0" ]
then
	echo "El número de parámetros es incorrecto." >&2
	echo "USO: $0" >&2
	exit 1
fi

echo "$(getent passwd | sort -n -t ':' -k 3 | tail -n 1 | cut -f 3  -d ':')"
exit 0
