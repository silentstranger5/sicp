#lang scheme
(provide smooth n-smooth)
(require "ex143")
(define dx 0.00001)
(define (average a b c) (/ (+ a b c) 3.0))
(define (smooth f)
  (lambda (x) (f (- x dx)) (f x) (f (+ x dx))))
(define (n-smooth f n)
  ((repeated smooth n) f ))
