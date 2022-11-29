override CFLAGS += -Wall

build_c: *.c
	gcc ${CFLAGS} $^ -o $@

shared_ptr: shared_ptr.cpp
	$(CXX) $(CXXFLAGS) $^ -o $@

unique_ptr: unique_ptr.cpp
	$(CXX) $(CXXFLAGS) $^ -o $@

weak_ptr: weak_ptr.cpp
	$(CXX) $(CXXFLAGS) $^ -o $@

build_d: *.d
	$(DC) $^ -of=$@

.PHONY: clean

clean:
	rm -rf shared_ptr weak_ptr unique_ptr *.o
