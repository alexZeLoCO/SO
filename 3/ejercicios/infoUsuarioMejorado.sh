#!/bin/bash 
if test $# -ne 1 
then 
	echo "El número de parámetros es incorrecto" >&2
	echo "USO $0 <Usuario>" >&2
	exit 1
fi

if ./existeUsuario.sh $1 | grep "^.*no.*$" > /dev/null
then
	echo "El usuario $1 no existe"
	exit 1
fi

./infoUsuario.sh $1

exit $?
