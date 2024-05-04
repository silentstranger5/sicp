#lang scheme
(provide n-root)
(require "../examples/fixed-point"
         "../examples/average-damp"
         "ex143")
(define (pow base n)
  (if (= n 0)
      1.0
      (* base (pow base (- n 1)))))
(define (n-root n x)
  (fixed-point
    ((repeated average-damp
               (log n 2))
     (lambda (y) (/ x (pow y (- n 1)))))
    1.0)) 
