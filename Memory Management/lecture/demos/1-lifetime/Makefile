override CFLAGS += -Wall

build_c: *.c
	gcc ${CFLAGS} $^ -o $@

build_d: *.d
	$(DC) $^ -of=$@

.PHONY: clean

clean:
	rm -rf build_c build_d *.o
