////////////////////////////////////////////////////////////////////////////////
//
//
//
////////////////////////////////////////////////////////////////////////////////
#include <cstdlib>
#include <iostream>
#include "ADT_SerialPort.h"
using namespace std;
//------------------------------------------------------------------------------
int main(int argc, char *argv[])
{
	if(argc < 2)
	{
		cerr << "too few arguments" << endl;
		return EXIT_FAILURE;
	}
	ADT_SerialPort mySerialPort = ADT_SerialPort(argv[1], atoi(argv[2]), argv[3]);

	mySerialPort.sendData("Hola", 4);
	
	GMainLoop* main_loop = NULL;
	main_loop = g_main_loop_new (NULL, FALSE);
	g_main_loop_run(main_loop);
 return 0;
}
//------------------------------------------------------------------------------
