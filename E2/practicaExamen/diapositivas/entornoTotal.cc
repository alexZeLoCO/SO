#include <iostream>
#include <unistd.h>

int main (int argc, char* argv[], char* envp[]) {
	
	for (int i = 0 ; envp[i] != NULL ; i++) {
		std::cout << envp[i] << std::endl;
	}
	
	return 0;
}
