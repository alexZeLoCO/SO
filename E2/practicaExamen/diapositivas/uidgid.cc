#include <iostream>
#include <unistd.h>

int main () {
	uid_t uid; // Usuario propietario
	uid_t euid; // Usuario efectivo

	gid_t gid; // Grupo propietario
	gid_t egid; // Grupo efectivo

	uid = getuid();
	euid = geteuid();
	gid = getgid();
	egid = getegid();

	std::cout << "Usuario propietario: " << uid << " /// Usuario efectivo: " << euid << std::endl;
	std::cout << "Grupo propietario: " << gid << " /// Grupo efectivo: " << egid << std::endl;

	return 0;
}
