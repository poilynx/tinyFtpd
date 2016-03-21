.PHONY:clean
CC = gcc
CFLAGS = -Wall -g 
BIN = tinyFtpd
OBJS = main.o sysutil.o session.o ftpproto.o nobody.o
$(BIN):$(OBJS)
	$(CC) $(CFLAGS) $^ -o $@
%.o:%.c
	$(CC) $(CFLAGS)  -c $< -o $@
clean:
	rm -f *.o $(BIN)