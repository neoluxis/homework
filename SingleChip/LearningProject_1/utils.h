typedef unsigned int uint;
typedef unsigned char uchar;
typedef unsigned long ulong;
typedef unsigned short ushort;

void delayMillis(int millis)
{
	int i, j;
	for (i = 0; i < millis; i++)
	{
		for (j = 0; j < 114; j++)
		{
		}
	}
}

void delaySec(int sec)
{
	int i, j, n;
	for (i = 0; i < sec; i++)
	{
		for (j = 0; j < 1000; j++)
		{
			for (n = 0; n < 114; n++)
			{
			}
		}
	}
}

void delay(uint times)
{
	int i;
	for (i = 0; i < times; i++)
	{
	}
}

void (*sleep)(int) = delayMillis;