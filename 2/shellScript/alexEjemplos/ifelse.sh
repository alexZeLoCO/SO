#/bin/bash

#inicio shell-script
if test $# -eq 0
then echo "Uso: $0 <nombre_fichero> " >&2
	# &2 es la salida de errores.
	exit 1
else
	cat $0
fi
