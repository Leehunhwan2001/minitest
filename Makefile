CC = gcc
CFLAGS = -Wall -Wextra -Werror -I.

SOURCES = market.c manager.c product.c
OBJECTS = $(SOURCES:.c=.o)

TARGET = market

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) -o $@ $^

clean:
	rm -f $(OBJECTS) $(TARGET)

.PHONY: all clean
