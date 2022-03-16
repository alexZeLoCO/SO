#! /bin/bash

if [ $# -ne "1" ]
then
	echo "El número de parámetros es incorrecto." >&2
	echo "USO: $0 <shell>" >&2
	exit 1
fi

echo "La lista de usuarios con el shell $1 es:"
(getent passwd | grep "^.*:.*:.*:.*:.*:.*:.*/$1$")
exit 0
