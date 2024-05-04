#lang scheme
(provide double inc inc-double)
(define (double f)
  (lambda (x) (f (f x))))
(define (inc x) (+ x 1))
(define (inc-double x) ((double inc) x))
