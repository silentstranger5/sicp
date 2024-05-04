#lang scheme
(provide sum sum-int sum-cubes pi-sum)
(require "sum")
(define (sum-int a b)
  (define (identity a) a)
  (define (inc a) (+ a 1))
  (sum identity a inc b))

(define (sum-cubes a b)
  (define (cube a) (* a a a))
  (define (inc a) (+ a 1))
  (sum cube a inc b))

(define (pi-sum a b)
  (define (pi-term x)
    (/ 1.0 (* x (+ x 2))))
  (define (pi-next x)
    (+ x 4))
  (sum pi-term a pi-next b))
