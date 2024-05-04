#lang scheme
(provide cont-frac cont-frac-iter)
(define (cont-frac n d k)
  (define (fraction i)
    (if (> i k)
        1
        (/ (n i) (+ (d i) (fraction (+ i 1))))))
  (fraction 1))
(define (cont-frac-iter n d k)
  (define (fraction i r)
    (if (= i 0)
        r
        (fraction (- i 1) (/ (n i) (+ (d i) r)))))
  (fraction k 1))
