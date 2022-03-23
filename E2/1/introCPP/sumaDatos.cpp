#include <iostream>

// # define <nombre> <valor>
#define constante 1

int main () {
	float a;
	float b;
	std::cout << "Introduzca dos numeros separados por 'Intro':" << std::endl	;
	std::cout << "Primer numero:  ";
	std::cin >> a;
	std::cout << "Segundo numero: ";
       	std::cin >> b;
	std::cout << a << " + " << b << " = " << a+b << std::endl;
}
