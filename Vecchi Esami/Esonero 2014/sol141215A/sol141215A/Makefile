all: A1 A3-gcc A3 A5 A7-gcc A8-gcc A8 A9

A1: A1.s A1-main.c
	gcc -O1 -m32 A1.s A1-main.c -o A1

A3-gcc.s: A3.c
	gcc -O1 -m32 -S A3.c -o A3-gcc.s -fomit-frame-pointer

A3-gcc: A3-gcc.s A3-main.c
	gcc -O1 -m32 A3-gcc.s A3-main.c -o A3-gcc

A3: A3.s A3-main.c
	gcc -O1 -m32 A3.s A3-main.c -o A3

A5: A5.s A5-main.c
	gcc -O1 -m32 A5.s A5-main.c -o A5

A7-gcc.s: A7.c
	gcc -O1 -m32 -S A7.c -o A7-gcc.s -fomit-frame-pointer

A7-gcc: A7-gcc.s A7-main.c
	gcc -O1 -m32 A7-gcc.s A7-main.c -o A7-gcc

A8-gcc.s: A8.c
	gcc -O1 -m32 -S A8.c -o A8-gcc.s -fomit-frame-pointer

A8-gcc: A8-gcc.s A8-main.c
	gcc -O1 -m32 A8-gcc.s A8-main.c -o A8-gcc

A8: A8.s A8-main.c
	gcc -O1 -m32 A8.s A8-main.c -o A8

A9: A9.s A9-main.c
	gcc -O1 -m32 A9.s A9-main.c -o A9

clean:
	rm -r A1 A3-gcc A3 A5 A7-gcc A8-gcc A8 A9

