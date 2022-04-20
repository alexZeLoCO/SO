#include <iostream>
#include <sys/types.h>
#include <unistd.h>
using namespace std;
int main()
{
	for (int i=0; i < 10; i++)
		if (fork()) break;
	cout << " Proceso " << getpid()
		<< "; padre = "
		<< getppid() << endl;
}
