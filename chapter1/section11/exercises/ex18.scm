#lang scheme 
(provide cube-root)
(define (cube-root-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-root-iter (improve guess x) x)))
(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3.0))
(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.001))
(define (cube x) (* x x x))
(define (cube-root x) (cube-root-iter 1 x))
