#lang scheme
(require "line")
(provide
  make-rect
  width-rect
  height-rect
  perimeter-rect
  area-rect)
(define (make-rect p1 p2) (cons p1 p2))
(define (width-rect rect) (abs (- (x-point (car rect)) (x-point (cdr rect)))))
(define (height-rect rect) (abs (- (y-point (car rect)) (y-point (cdr rect)))))
(define (perimeter-rect rect) (+ (* (width-rect rect) 2.0) (* (height-rect rect) 2.0)))
(define (area-rect rect) (* (width-rect rect) (height-rect rect)))
