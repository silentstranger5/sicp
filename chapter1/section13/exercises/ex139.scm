#lang scheme
(provide tan-cf)
(require "ex137")
(define (square x) (* x x))
(define (tan-cf x k)
  (cont-frac (lambda (i)
               (if (= i 1)
                   x
                   (* (- 1) (square x))))
             (lambda (i) (+ 1.0 (* 2.0 (- i 1.0))))
             k))
