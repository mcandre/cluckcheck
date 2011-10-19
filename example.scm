#!/bin/bash
#|
exec csi -ss $0 ${1+"$@"}
exit
|#

(define (main args)
	(load "cluckcheck.scm")

	(display (format "Random integer: ~a\n" (gen-int)))

	; ...

	(exit))