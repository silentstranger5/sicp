#lang scheme
(provide iterative-improve sqrt fixed-point)
(define (iterative-improve good-enough? improve)
  (define (iterate guess)
    (if (good-enough? guess)
        guess
        (iterate (improve guess))))
  (lambda (guess) (iterate guess)))
(define tolerance 0.00001)
(define (square x) (* x x))
(define (average x y) (/ (+ x y) 2.0))
(define (sqrt x)
  ((iterative-improve
     (lambda (y) (< (abs (- (square y) x)) tolerance))
     (lambda (y) (average y (/ x y))))
   1.0))
(define (fixed-point f first-guess)
  ((iterative-improve
    (lambda (x) (< (abs (- (f x) x)) tolerance))
    (lambda (x) (average x (f x))))
   first-guess))
