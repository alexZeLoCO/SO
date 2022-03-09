# /bin/bash

if test $# -ne 1
then
	echo "El número de parámetros es incorrecto" >&2
	echo "USO: $0 <usuario>" >&2
	exit 1
fi

if getent passwd | grep "^$1:.*$" > /dev/null
then
	echo "El usuario $1 pertenece al sistema"
	exit 0
else
	echo "El usuario $1 NO pertenece al sistema"
	exit 1
fi
