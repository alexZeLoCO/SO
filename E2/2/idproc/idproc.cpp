#include <iostream>
#include <unistd.h>

int main () {
	std::cout << "Usuario propietario: " << getuid()  << std::endl;
	std::cout << "Usuario efectivo: "    << geteuid() << std::endl;
	std::cout << "Grupo propietario: "   << getgid()  << std::endl;
	std::cout << "Grupo efectivo: "      << getegid() << std::endl;
}
