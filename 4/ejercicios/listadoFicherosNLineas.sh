# /bin/bash

if test $# -ne 2
then
	echo "Error, faltan argumentos" >&2
	echo "USO: $0 <directorio> <nLineas>" >&2
	exit 1
fi

for archivo in "$1"/*
	if test -d "$archivo"
	then
		"$0" "$archivo" $2
	else
		n_lin=$(cat "$archivo" | wc -l)
		if test $n_lin -gt $
		then
			echo $archivo
		fi
	fi
done
exit 0
