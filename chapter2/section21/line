#lang scheme
(provide
  make-segment
  start-segment
  end-segment
  make-point
  x-point
  y-point
  midpoint-segment
  print-point)
(define (make-segment start end) (cons start end))
(define (start-segment line) (car line))
(define (end-segment line) (cdr line))
(define (make-point x y) (cons x y))
(define (x-point p) (car p))
(define (y-point p) (cdr p))
(define (midpoint-segment line)
  (make-point (average (x-point (start-segment line)) (x-point (end-segment line)))
              (average (y-point (start-segment line)) (y-point (end-segment line)))))
(define (average x y)
  (/ (+ x y) 2.0))
(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))
