#!/bin/bash
#|
exec csi -ss $0 ${1+"$@"}
exit
|#

(load "cluckcheck.scm")

(define (is-even n)
	(= 0 (modulo n 2)))

(define (gen-even)
	(let ((n (gen-int)))
		(if (not (= 0 (modulo n 2)))
			(+ n 1)
			n)))

(define (main args)

	(for-all is-even gen-int)

	(for-all is-even gen-even)

	; ...

	(exit))