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

(define (reversible s)
	(string=? s (list->string (reverse (reverse (string->list s))))))

(define (main args)

	(for-all is-even gen-int)

	(for-all is-even gen-even)

	(for-all reversible gen-string)

	(exit))