test: example.scm
	@csi example.scm

install: cluckcheck.scm
	@chicken-install

uninstall:
	@chicken-uninstall -force cluckcheck

editorconfig:
	@git ls-files -z | grep -av patch | xargs -0 -r -n 100 $(shell npm bin)/eclint check

lint: editorconfig

clean:
	-rm *.so
	-rm *.o
	-rm *.import.scm
