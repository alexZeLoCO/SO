#include <iostream>

// # define <nombre> <valor>
#define constante 1

int main () {
	float a;	// Dato 1
	float b;	// Dato 2
	std::cout << "Introduzca dos numeros separados por 'Intro':" << std::endl	;
	std::cout << "Primer numero:  ";
	std::cin >> a;	// Dato 1 Input
	std::cout << "Segundo numero: ";
       	std::cin >> b;	// Dato 2 Input
	std::cout << a << " + " << b << " = " << a+b << std::endl;	// Output
}
