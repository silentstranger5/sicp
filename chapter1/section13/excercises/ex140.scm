#lang scheme
(provide cubic-root)
(require "../examples/newton")
(define (cube x) (* x x x))
(define (square x) (* x x))
(define (cubic a b c)
  (lambda (x) (+ (cube x) (* a (square x)) (* b x) c)))
(define (cubic-root a b c)
  (newton-method (cubic a b c) 1))
