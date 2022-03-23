#include <iostream>

int main () {
	char a='x';
	char *b = &a;
	std::cout << "Puntero " << b << " con valor " << *b << std::endl;
}
