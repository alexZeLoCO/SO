#include <iostream>
#include <unistd.h>
#include <sys/ypes.h>
#include <string>

int main (int argc, char* argv[]){
	argv[argc]=NULL;
	execvp(argv[1], argv+1);
}
