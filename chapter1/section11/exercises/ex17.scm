#lang scheme
(provide sqrt)
(require "../examples/sqrt")
(define (good-enough? guess x)
  (< (/ (abs (- guess (improve guess x))) guess) 0.001))
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))
(define (sqrt x) (sqrt-iter 1 x))
