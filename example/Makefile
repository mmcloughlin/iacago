all: iaca.out

./example: main.go add_amd64.s ../iaca.h
	go build -a -asmflags '-I ..'

iaca.out: ./example
	$(IACA_PATH)/iaca $< > $@

clean:
	$(RM) iaca.out ./example
