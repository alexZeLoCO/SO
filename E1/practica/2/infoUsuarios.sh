#! /bin/bash

if [ $# -lt "1" ]
then
	echo "El número de parámetros es incorrecto." >&2
	echo "USO: $0 <usuario0> [usuario1] [usuario2] ... [usuarioN]" >&2
	exit 1
fi

for i
do
	./infoUsuario.sh $i
	echo ""
done
exit 0
