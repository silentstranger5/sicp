#lang scheme
(provide sqrt)
(require "../examples/sqrt")
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))
(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))
(define (sqrt x) (sqrt-iter 1 x))
