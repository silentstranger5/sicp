#lang scheme
(define (memq item x)
  (cond ((null? x) false)
	((eq? item x) true)
	(else (memq item (cdr x)))))
