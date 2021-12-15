pugas: main.c
	gcc main.c -o pugas

expected.o: asm.s
	as -o expected.o asm.s

test: pugas expected.o
	./pugas > actual.o
	cmp expected.o actual.o

clean:
	rm -f pugas expected.o actual.o actual

.PHONY: clean
