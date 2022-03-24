# /bin/sh

if test $# -eq 0
then echo "Uso: $0 <fichero_1> ... <fichero_n>" >&2
	exit 1
fi
until test ! $# -gt 0
do
	if test ! -s $1
	then echo "no existe el fichero $1" >&2
	else
		cat $1
	fi
	shift
done

