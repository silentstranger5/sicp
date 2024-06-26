#lang scheme
(require "../examples/set.scm")
(provide union-set)
(define (union-set set1 set2)
  (cond ((null? set1) set2)
	((null? set2) set1)
	((not (element-of-set? (car set1) set2))
	 (cons (car set1) (union-set (cdr set1) set2)))
	(else (union-set (cdr set1) set2))))
