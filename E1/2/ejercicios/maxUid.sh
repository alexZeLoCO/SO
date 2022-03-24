#! /bin/bash

if test ! $# -eq "0"
then
	echo "El número de parámetros es incorrecto" >&2
	echo "USO: $0" >&2
	exit 1
fi
echo "$(getent passwd | cut -d ':' -f 3 | sort -n | tail -n 1)"
exit 0
