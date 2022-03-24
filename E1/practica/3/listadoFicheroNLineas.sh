#! /bin/bash

if [ $# -ne "2" ]
then
	echo "El número de parámetros es incorrecto" >&2
	echo "USO: $0 <directorio> <número_de_líneas>" >&2
	exit 1
fi

for entrada in "$1"/*
do
	if [ -d "$entrada" ]
	then
		"$0" "$entrada" "$2"
	else
		n_lineas=$(cat "$entrada" | wc -l)
		if [ "$n_lineas" -gt "$2" ]
		then
			echo "$entrada"
		fi
	fi
done
exit 0
