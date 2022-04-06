#include <iostream>
#include <unistd.h>

int main () {
	std::cout << "Usuario propietario: " << getuid() << std::endl;
	std::cout << "Usuario efectivo: "    << geteuid() << std::endl;

	setuid((uid_t) 0);
	std::cout << "setuid((uid_t) 0);" << std::endl;

	std::cout << "Usuario propietario: " << getuid() << std::endl;
	std::cout << "Usuario efectivo: "    << geteuid() << std::endl;
}
