#lang scheme
(provide f-rec f-iter)
(define (f-rec n)
  (if (< n 3)
      n
      (+ (f-rec (- n 1)) (* 2 (f-rec (- n 2))) (* 3 (f-rec (- n 3))))))
(define (f-iter n)
  (f-iter-step 2 1 0 n))
(define (f-iter-step a b c n)
  (if (< n 3)
      a
      (f-iter-step (+ a (* 2 b) (* 3 c)) a b (- n 1))))
