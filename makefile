OBJECTS= main.o draw.o display.o matrix.o parser.o
CFLAGS= -Wall
LDFLAGS= -lm
CC= gcc

run: all
	./main script

all: $(OBJECTS)
	$(CC) -g -o main $(OBJECTS) $(LDFLAGS)

main.o: main.c display.h draw.h ml6.h matrix.h parser.h
	$(CC) -g -c main.c

draw.o: draw.c draw.h display.h ml6.h matrix.h
	$(CC) $(CFLAGS) -g -c draw.c

dsiplay.o: display.c display.h ml6.h matrix.h
	$(CC) $(CFLAGS) -g -c display.c

matrix.o: matrix.c matrix.h
	$(CC) $(CFLAGS) -g -c matrix.c

parser.o: parser.c parser.h matrix.h draw.h display.h ml6.h
	$(CC) $(CFLAGS) -g -c parser.c

clean:
	rm *.o *~
