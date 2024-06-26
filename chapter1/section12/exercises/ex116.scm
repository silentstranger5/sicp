#lang scheme
(provide fast-expt)
(define (square x) (* x x))
(define (fast-expt b n)
  (fast-expt-iter 1 b n))
(define (fast-expt-iter a b n)
  (cond ((= n 0) a)
        ((even? n) (fast-expt-iter a (square b) (/ n 2)))
        (else (fast-expt-iter (* a b) b (- n 1)))))
