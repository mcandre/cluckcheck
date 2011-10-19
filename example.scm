#!/usr/bin/env csi -ss

(use cluckcheck)

(define (gen-even)
	(let ((n (gen-int)))
		(if (not (= 0 (modulo n 2)))
			(+ n 1)
			n)))

(define (reversible s)
	(string=? s (list->string (reverse (reverse (string->list s))))))

(for-all even? gen-int)
(for-all even? gen-even)
(for-all reversible gen-string)
(exit)