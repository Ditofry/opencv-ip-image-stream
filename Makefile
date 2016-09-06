CC           = clang++
CFLAGS       = -g -std=c++11
DEPENDENCIES = main.cpp
LINKS        = -lpthread -lstdc++

all:
	$(CC) $(DEPENDENCIES) $(CFLAGS) $(LINKS) -o vidStream `pkg-config --cflags --libs opencv`

clean:
	rm -f vidStream
	rm -rf vidStream.dSYM
