test: example.scm
	csi example.scm

install: cluckcheck.scm
	chicken-install

uninstall:
	chicken-uninstall -force cluckcheck

lili:
	bundle exec lili .

lint: lili

clean:
	-rm *.so
	-rm *.o
	-rm *.import.scm
