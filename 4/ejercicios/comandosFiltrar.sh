# /bin/bash

if test $# -ne 2
then
	echo "Error, faltan argumentos" >&2
	echo "USO: $0 <limiteTamañoInferior> <limite_tamaño_superior>" >&2
	exit 1
fi

if test $2 -lt $1
then
	echo "El límite superior debe ser mayor que el inferior" >%2
	exit 1
fi

# 1. Convertir en tipo csv
# 2. Coger líneas a partir de la segunda 
# 3. Iterar
ps uaxw | tr -s " " | tail -n +2 | while read line
do

	# 4. Eliminar columnas excepto 5
	size=$(echo $line | cut -d " " -f 5)
	if test "$size" -ge "$1" -a "$size" -le "$2"
	then
		echo "$line" | cut -d " " -f 11-
	fi
done
exit 0
