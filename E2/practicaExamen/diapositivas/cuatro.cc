#include <iostream>
#include <unistd.h>

int main () {
	std::cout << "Usuario propietario: " << getuid() << " /// Usuario efectivo: " << geteuid() << std::endl;
	std::cout << "Grupo propietario: " << getgid() << " /// Grupo efectivo: " << getegid() << std::endl;

	if (seteuid(0) == -1) {
		std::cout << "Err" << std::endl;
	}

	std::cout << "Usuario propietario: " << getuid() << " /// Usuario efectivo: " << geteuid() << std::endl;
	std::cout << "Grupo propietario: " << getgid() << " /// Grupo efectivo: " << getegid() << std::endl;

	return 0;

}
