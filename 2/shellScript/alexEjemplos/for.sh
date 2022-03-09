#/bin/bash

# Uso for:
# 1 -	Recorrer params
# 2 - 	Recorrer directorios
# 3 - 	Recorrer listas

#inicio shell-script
echo "for i"
for i	# Si no hay nada mas, se recorren los params.
do
	echo -ne "$i\t"
done

echo -e "\nfor i in $ *"

for i in $*	# Params separados en funcion de espacios en blanco ==> Ignora comillas
do
	echo -ne "$i\t"
done

echo -e "\nfor i in '$ @'"

for i in "$@"	# Equivalente a <for i> (Bucle 1 de este fichero)
do
	echo -ne "$i\t"
done

echo -e "\n for i in '/etc/'*"
for i in "/etc/"*
do
	echo -ne "$i\t"
done

echo -e "\n for i in $ lista"
lista='a b c d'
for i in $lista
do
	echo -ne "$i "
done
echo
#fin shell-script
