build_c: scope.c
	gcc -Wall scope.c -o scope_c

build_d: scope.d
	$(DC) -dip1000 scope.d -of=scope_d

.PHONY: clean

clean:
	rm -rf build_c build_d *.o
