#!/bin/bash 
if test $# -ne 1 
then 
	echo "El número de parámetros es incorrecto" >&2
	echo "USO $0 <Usuario>" >&2
	exit 1
fi

echo -n "El usuario $1"

if ! getent passwd | grep "^$1:.*$" > /dev/null
then
	echo -n " no"
fi

echo " pertenece al sistema"

exit 0
