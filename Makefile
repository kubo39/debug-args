.PHONY: all clean

all:
	$(DC) -lib library.d
	$(CC) -Wall -Wextra program.c -L./ -lrary -lphobos2 -o test.bin
	./test.bin 1

clean:
	$(RM) *.a test.bin
