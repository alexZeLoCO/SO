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
c=0
getent passwd | cut -d : -f 3 | sort -n | while read line
do
exit 0
