#include <REG51.H>

#define uchar unsigned char
#define uint unsigned int

sbit we = P2 ^ 7;
sbit du = P2 ^ 6;
uchar c = 0;
uchar code duan[] = {
	0x3F, // "0"
	0x06, // "1"
	0x5B, // "2"
	0x4F, // "3"
	0x66, // "4"
	0x6D, // "5"
	0x7D, // "6"
	0x07, // "7"
	0x7F, // "8"
	0x6F, // "9"
	0x77, // "A"
	0x7C, // "b"
	0x39, // "C"
	0x5E, // "d"
	0x79, // "E"
	0x71, // "F"
	0x3d, // "G"
	0x76, // "H"
	0x1E, // "J"
	0x38, // "L"
	0x37, // "n"
	0x3E, // "u"
	0x5C, // "o"
	0x73, // "P"
	0x67, // "q"
	0x6e, // "y"
	0x40, // "-"
	0x80, // "."
	0x00, // all off
	0xFF, // all on
};

uchar code wei[] = {
	0xfe, // 1111 1110
	0xfd, // 1111 1101
	0xfb, // 1111 1011
	0xf7, // 1111 0111
	0xef, // 1110 1111
	0xdf, // 1101 1111
	0xbf, // 1011 1111
	0x7f  // 0111 1111
};

void delay(int millis)
{
	int i;
	int j;
	for (i = 0; i < millis; i++)
	{

		for (j = 0; j < 120; j++)
			;
	}
}

void timer0Init()
{
	TMOD = 0x01;
	TH0 = 0xFC;
	TL0 = 0x18;
	EA = 1;
	ET0 = 1;
	TR0 = 1;
}

void main()
{
	timer0Init();
	while (1)
	{
	}
}

void timer0() interrupt 1
{

	TH0 = 0xFC;
	TL0 = 0x18;
	if (c < 8)
	{
		P0 = 0xff;
		we = 1;
		P0 = wei[c];
		we = 0;
		P0 = 0xff;
		du = 1;
		P0 = duan[c];
		du = 0;
		c++;
	}
	else
	{
		c = 0;
	}
}