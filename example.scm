#!/bin/bash
#|
exec csi -ss $0 ${1+"$@"}
exit
|#

(define (main args)
	(load "cluckcheck.scm")

	(display (format "Random integer: ~a\n" (gen-int)))

	(display (format "Random boolean: ~a\n" (gen-bool)))

	(display (format "Random char: ~a\n" (gen-char)))

	(display (format "Random string: ~a\n" (gen-string)))

	; ...

	(exit))