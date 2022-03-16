#! /bin/bash

if [ $# -ne "2" ]
then
	echo "El número de parámetros es incorrecto" >&2
	echo "USO: $0 <usuario> <nuevo_shell>" >&2
	exit 1
fi

echo "" > ./passwd_out 	# limpiar

cat ./passwd_copia | while read line # bucle
do
	if (echo "$line" | grep "^$1:.*$") > /dev/null	# Condición SIN TEST
	then
		echo "$(echo $line | cut -d ':' -f 1,2,3,4,5):$2" >> ./passwd_out
	else
		echo "$line" >> ./passwd_out
	fi
done
exit 0
