#! /bin/bash

if [ $# -ne 2 ]
then
	echo "El numero de parametros es incorrecto" >&2
	echo "USO: $0 <fichero.csv> <grupoPracticas>" >&2
	exit 1
fi

echo "La lista de alumnos que pertenecen al grupo de prácticas $2 es:"
(cat $1 | grep "^.*;$2$" | cut -d ";" -f 3)
exit 0
