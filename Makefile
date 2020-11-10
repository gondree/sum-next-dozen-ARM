
all: main.x

main.x: main.c sumnextdozen.s sumsix.s
	gcc -g -gstabs main.c sumnextdozen.s sumsix.s -o main.x
clean:
	rm -f main.x
