#!/bin/bash
#|
exec csi -ss $0 ${1+"$@"}
exit
|#

(load "cluckcheck.scm")

(define (is-even n)
	(= 0 (modulo n 2)))

(define (main args)

	(for-all is-even gen-int)

	; ...

	(exit))