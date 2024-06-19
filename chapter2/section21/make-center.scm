#lang scheme
(provide
  add-interval
  mul-interval
  div-interval
  make-interval
  lower-bound
  upper-bound
  make-center-width
  center
  width
  make-center-percent
  percent)
(require "interval")
(define (make-center-width c w)
  (make-interval (- c w) (+ c w)))
(define (center i)
  (/ (+ (lower-bound i) (upper-bound i)) 2.0))
(define (width i)
  (/ (- (upper-bound i) (lower-bound i)) 2.0))
(define (make-center-percent c p)
  (make-interval (* c (- 1 (/ p 100.0))) (* c (+ 1 (/ p 100.0)))))
(define (percent i)
  (* (/ (width i) (center i)) 100.0))
