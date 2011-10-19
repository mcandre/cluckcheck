#!/bin/bash
#|
exec csi -ss $0 ${1+"$@"}
exit
|#

(use (prefix cluckcheck cluckcheck:))

(define (is-even n)
	(= 0 (modulo n 2)))

(define (gen-even)
	(let ((n (cluckcheck:gen-int)))
		(if (not (= 0 (modulo n 2)))
			(+ n 1)
			n)))

(define (reversible s)
	(string=? s (list->string (reverse (reverse (string->list s))))))

(define (main args)
	(cluckcheck:for-all is-even cluckcheck:gen-int)
	(cluckcheck:for-all is-even gen-even)
	(cluckcheck:for-all reversible cluckcheck:gen-string)
	(exit))