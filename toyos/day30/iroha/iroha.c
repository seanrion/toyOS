#include "apilib.h"

void HariMain(void)
{
	static char s[12] = {"HELLO WORLD" };
	api_putstr0(s);
	api_end();
}
