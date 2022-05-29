#include <iostream>
#include <unistd.h>

int main (int argc, char* argv[]) {
	if (argc < 3) {
		perror("USO: delay <segundos> <orden>");
		exit(1);
	}
	sleep(atoi(argv[1]));
	execvp(argv[2], argv+2);
	return 0;
}
