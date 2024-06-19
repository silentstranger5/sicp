#lang scheme
(provide *)
(define (double x) (+ x x))
(define (halve x) (/ x 2))
(define (* a b)
  (cond ((= b 1) a)
        ((even? b) (double (* a (halve b))))
        (else (+ a (* a (- b 1))))))
