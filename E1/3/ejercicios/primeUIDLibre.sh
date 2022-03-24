# /bin/bash

if test $# -ne 1
then
	echo "Error, faltan argumentos" >&2
	echo "USO: $0 <primerUID>" >&2
	exit 1
fi

# 1. Contador
# 2. Coger solo el UID
# 3. Ordenar UID
c="0"
getent passwd | cut -d : -f 3 | sort -n | while read line
do
	if test $line -eq $(expr $1 + $c)	# linea igual a UID ==> Saltar
	then
		c=$(expr $c + 1)
	else
		if test $c -ne "0"		# linea no igual a UID y contador > 0 ==> Retornar
		then
			echo "UID libre: $(expr $1 + $c)"
			break;
		fi
	fi
done
exit 0
