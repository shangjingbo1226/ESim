CC = g++
CFLAGS = -lm -pthread -Ofast -march=native -Wall -funroll-loops -Wno-unused-result -lgsl -lm -lgslcblas
LFLAGS = -lgsl -lm -lgslcblas
INCLUDES = -I/usr/local/include -I/home/mengqu2/software/eigen-3.2.5
LIBS = -L/usr/local/lib

esim search : ransampl.o linelib.o main.o search.cpp
	$(CC) $(CFLAGS) search.cpp -o search $(INCLUDES) $(LIBS) $(LFLAGS)
	$(CC) $(CFLAGS) -o esim ransampl.o linelib.o main.o $(INCLUDES) $(LIBS) $(LFLAGS)

ransampl.o : ransampl.c
	$(CC) $(CFLAGS) -c ransampl.c $(INCLUDES) $(LIBS) $(LFLAGS)

linelib.o : linelib.cpp ransampl.h
	$(CC) $(CFLAGS) -c linelib.cpp $(INCLUDES) $(LIBS) $(LFLAGS)

main.o : main.cpp linelib.o
	$(CC) $(CFLAGS) -c main.cpp $(INCLUDES) $(LIBS) $(LFLAGS)

clean :
	rm -rf *.o esim search
