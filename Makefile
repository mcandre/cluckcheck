all: test

test: install example.scm
	./example.scm

install: cluckcheck.scm
	chicken-install

uninstall:
	chicken-uninstall -force cluckcheck

clean:
	-rm *.so
	-rm *.o
	-rm *.import.scm
