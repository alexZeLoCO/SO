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

for i in "$@"
do
	echo -ne "$i\t"
done

echo -e "\n for i in '/etc/'*"
for i in "/etc/"*
do
	echo -ne "$i\t"
done

echo
#fin shell-script
