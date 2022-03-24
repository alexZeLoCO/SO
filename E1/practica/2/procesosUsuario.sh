#! /bin/bash

if [ $# -ne "1" ]
then
	echo "El número de parámetros es incorrecto." >&2
	echo "USO: $0 <usuario>" >&2
	exit 1;
fi

(ps uaxw | grep "^$1 .*$")
exit 0
