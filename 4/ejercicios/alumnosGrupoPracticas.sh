# /bin/bash

if test $# -ne 2
then
	echo "Error, faltan argumentos" >&2
	echo "USO: $0 <fichero> <grupoPrácticas>" >&2
	exit 1
fi

if ! test -r $1
then
	echo "El fichero $1 no existe ó no se puede abrir para lectura" >&2
	exit 1
fi

echo "La lista de alumnos que pertenecen al grupo de prácticas $2 es:"
grep "^.*;.*;.*;.*;$2$" | cut -d ';' -f 3
exit 0
