#lang scheme
(require "../examples/ordered.scm")
(provide adjoin-set)

(define (adjoin-set x set)
  (cond ((null? set) x)
	((= x (car set)) set)
	((< x (car set)) (cons x set))
	(else (cons (car set)
		    (adjoin-set x (cdr set))))))
