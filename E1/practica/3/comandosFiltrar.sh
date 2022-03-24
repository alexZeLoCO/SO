#! /bin/bash

if [ $# -ne "2" ]
then
	echo "El número de parámetros es incorrecto" >&2
	echo "USO: $0 <min> <max>" >&2
	exit 1
fi

(ps uaxw | tail +2  | tr -s "[:blank:]" ";") | while read line
do
	mem=$(echo $line | cut -d ';' -f 5)
	if [ $mem -gt $1 -a $mem -lt $2 ]
	then
	      	echo "$(echo $line | cut -d ';' -f 11)"
	fi
done
exit 0
