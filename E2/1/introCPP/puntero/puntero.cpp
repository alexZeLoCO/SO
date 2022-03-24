#include <iostream>

int main () {
	char a='x';
	char *b = &a;	// b es un puntero (*) a char
	std::cout << "Puntero " << b << " con valor " << *b << std::endl;
}
