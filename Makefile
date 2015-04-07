CC := mpicc
CFLAGS := -Wall -O2 -fopenmp
TARGET := hello

.PHONY: all submit log

all: $(TARGET)

$(TARGET): main.c
	$(CC) $(CFLAGS) -o$@ $^

submit: all
	llsubmit batch_hello.sh

log: all
	less trosh_hello.log

clean:
	rm -f $(TARGET) *.log *.err core.*
