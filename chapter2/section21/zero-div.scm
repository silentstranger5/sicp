#lang scheme
(provide 
  add-interval
  mul-interval
  div-interval
  make-interval
  lower-bound
  upper-bound)
(require "interval")
(define (div-interval x y)
  (if (and (or (< (lower-bound y) 0) (= (lower-bound y) 0))
           (or (> (upper-bound y) 0) (= (upper-bound y) 0)))
      (display "Zero division")
      (mul-interval
        x
        (make-interval (/ 1.0 (upper-bound y))
                       (/ 1.0 (lower-bound y))))))
