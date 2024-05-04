#lang scheme
(provide fixed-point-of-transform sqrt sqrt-newton)
(require "fixed-point" "average-damp" "newton")
(define (square x) (* x x))
(define (fixed-point-of-transform g transform guess)
  (fixed-point (transform g) guess))
(define (sqrt x)
  (fixed-point-of-transform
    (lambda (y) (/ x y)) average-damp 1.0))
(define (sqrt-newton x)
  (fixed-point-of-transform
    (lambda (y) (- (square y) x)) newton-transform 1.0))
