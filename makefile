CC=gcc
CFLAGS=-I.
DEPS = myfunc.h

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

mymake: main.o myfunc.o 
	$(CC) -o mymake main.o myfunc.o 
