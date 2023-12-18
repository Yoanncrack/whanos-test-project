CC = gcc
CFLAGS = -Wall -Wextra -g
SRC = main.c
OBJ = $(SRC:.c=.o)
BIN = bin

all: $(BIN)

$(BIN): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(BIN)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(BIN)