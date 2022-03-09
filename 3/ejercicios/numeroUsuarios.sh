#! /bin/bash

if test $# -ne "0"	# nº params diferente de 0
then
	echo "El número de parámemtros es incorrecto" >&2	# Salida errores (&2)
	echo "USO: $0" >&2	# Salida errores (&2)
	exit 1
fi
echo "El sistema tiene $(getent passwd | wc -l) usuarios"
exit 0
