CC = clang
CFLAGS = -I$(IACA_PATH) -Wall

all: sample.o

%.dis: %.o
	objdump -disassemble-all $< > $@

clean:
	$(RM) *.o *.dis
