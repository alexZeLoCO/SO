#!/bin/bash 
if test $# -eq 0 
then 
	echo "El número de parámetros es incorrecto" >&2
	echo "USO $0 <Usuario1> ... <UsuarioN>" >&2
	exit 1
fi
for i
do
	echo "-------------------"
	./infoUsuario.sh $i
done
exit 0
