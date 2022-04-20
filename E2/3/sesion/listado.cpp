#include <iostream>
#include <unistd.h>
#include <sys/types.h>

int main () {
	if (fork()) {
		execl("/bin/ls", "ls", "-l", NULL);	// El hijo ejecuta 'ls -l'
	} else {
		sleep(1);	// El padre duerme
	}
}
