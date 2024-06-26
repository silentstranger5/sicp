#lang scheme
(require "../examples/ordered.scm")
(provide union-set)

(define (union-set set1 set2)
  (cond ((and (null? set1)
	      (null? set2)) '())
	((null? set1) set2)
	((null? set2) set1)
	(else
	  (let ((x1 (car set1)) (x2 (car set2)))
	    (cond ((= x1 x2)
		   (cons x1 (union-set (cdr set1)
				       (cdr set2))))
		  ((< x1 x2)
		   (cons x1 (union-set (cdr set1) set2)))
		  ((< x2 x1)
		   (cons x2 (union-set set1 (cdr set2)))))))))
