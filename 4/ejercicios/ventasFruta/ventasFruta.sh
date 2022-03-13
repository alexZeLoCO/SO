# /bin/bash


if test $# -ne 2
then
	echo "Error, faltan argumentos" >&2
	echo "USO: $0 <fichero> <fruta>" >&2
	exit 1
fi


if ! grep "^$2.*" $1 > /dev/null
then
	echo "No se ha vendido la fruta $2" >&2
	exit 1
fi

echo "La fruta $2 se vendió los siguientes días:"

grep "^$2;.*$" $1 | sort -n -t ";" -k 2 | while read linea
do
	dia=$(echo "$linea" | cut -f 2 -d ';')
	cantidad=$(echo "$linea" | cut -d ";" -f 3)
	echo "El día $dia se vendieron $cantidad Kg"
done
exit 0
