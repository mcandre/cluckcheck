install: cluckcheck.scm
	chicken-install

uninstall:
	chicken-uninstall -force cluckcheck

clean:
	-rm *.so
	-rm *.o
	-rm *.import.scm