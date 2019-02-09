PROGRAM = lambda_function
CC = gcc
CFLAGS = -Wall
OBJS = $(PROGRAM).o

$(PROGRAM): $(OBJS)
	$(CC) $(CFLAGS) -o $(PROGRAM) $(OBJS)

$(OBJS): $(PROGRAM).c
	$(CC) -c $(PROGRAM).c

.PHONY: clean
clean:
	rm -f $(PROGRAM){,o}

