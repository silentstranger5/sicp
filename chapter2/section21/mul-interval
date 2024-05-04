#lang scheme
(require "interval")
(provide
  add-interval
  mul-interval
  div-interval
  make-interval
  lower-bound
  upper-bound)
(define (make-interval x y)
  (cons (min x y) (max x y)))
(define (min-abs x)
  (min (abs (lower-bound x)) (abs (upper-bound x))))
(define (max-abs x)
  (max (abs (lower-bound x)) (abs (upper-bound x))))
(define (negative? x) (< x 0))
(define (positive? x) (or (= x 0) (> x 0)))
(define (check-endpoints x y low-x up-x low-y up-y)
  (and (low-x (lower-bound x))
       (up-x  (upper-bound x))
       (low-y (lower-bound y))
       (up-y  (upper-bound y))))
(define (mul-int x y)
  (cond ((check-endpoints x y
           negative?
           negative?
           negative?
           negative?)
         (make-interval (* (max-abs x) (max-abs y))
                        (* (min-abs x) (min-abs y))))
        ((check-endpoints x y
           negative?
           negative?
           negative?
           positive?) 
         (make-interval (* (max-abs x) (upper-bound y))
                        (* (max-abs x) (lower-bound y))))
       ((check-endpoints x y
          negative?
          negative?
          positive?
          positive?)
        (make-interval (* (max-abs x) (max-abs y))
                       (* (min-abs x) (min-abs y)))) 
       ((check-endpoints x y
          negative?
          positive?
          negative?
          negative?)
        (make-interval (* (upper-bound x) (max-abs y))
                       (* (lower-bound x) (max-abs y))))
       ((check-endpoints x y
          negative?
          positive?
          negative?
          positive?)
        (display "unhandled condition"))
       ((check-endpoints x y
          negative?
          positive?
          positive?
          positive?)
        (make-interval (* (lower-bound x) (max-abs y))
                       (* (upper-bound x) (max-abs y))))
       ((check-endpoints x y
          positive?
          positive?
          negative?
          negative?)
        (make-interval (* (max-abs x) (max-abs y))
                       (* (min-abs x) (min-abs y))))
       ((check-endpoints x y
          positive?
          positive?
          negative?
          negative?
        (make-interval (* (max-abs x) (lower-bound y))
                       (* (max-abs x) (upper-bound y)))))
       ((check-endpoints x y)
          positive?
          positive?
          positive?
          positive?
        (make-interval (* (min-abs x) (min-abs y))
                       (* (max-abs x) (max-abs y))))))
