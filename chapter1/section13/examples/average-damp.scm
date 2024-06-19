#lang scheme
(provide average-damp sqrt-average cube-root)
(require "fixed-point")
(define (average x y) (/ (+ x y) 2.0))
(define (square x) (* x x))
(define (average-damp f)
  (lambda (x) (average x (f x))))
(define (sqrt-average x)
  (fixed-point (average-damp (lambda (y) (/ x y)))
               1.0))
(define (cube-root x)
  (fixed-point (average-damp (lambda (y) (/ x (square y))))
               1.0))