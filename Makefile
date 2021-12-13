CC=gcc --std=c99 -g

all: test_stack

test_stack: test_stack.c stack.o list.o
	$(CC) test_stack.c stack.o list.o -o test_stack

list.o: list.c list.h
	$(CC) -c list.c

stack.o: stack.c stack.h
	$(CC) -c stack.c

clean:
	rm -f *.o test_stack test_queue test_queue_from_stacks palindrome
