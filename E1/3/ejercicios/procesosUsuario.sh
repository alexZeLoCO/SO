# /bin/bash

if test $# -ne 1
then
	echo "Error, faltan argumentos" >&2
	echo "USO: $0 <usuario>" >&2
	exit 1
fi

$(ps uaxw | grep '^$1:.*')
exit 0
