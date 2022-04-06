#include <iostream>
#include <stdlib.h>

int main () {
	std::cout << "Usuario: " << getenv("USER") << std::endl;
	std::cout << "Utilizando el shell: " << getenv("SHELL") << std::endl;
}
