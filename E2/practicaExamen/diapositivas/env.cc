#include <iostream>
#include <unistd.h>

int main () {
	char* name;
	char* host;
	char* pwd;

	name = getenv("USER");
	host = getenv("HOSTNAME");
	pwd  = getenv("PWD");

	std::cout << name << "@" << host << ":" << pwd << " $" << std::endl;

	return 0;
}
