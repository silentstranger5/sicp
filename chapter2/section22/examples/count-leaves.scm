#lang scheme
(provide count-leaves)
(define (count-leaves x)
  (cond ((null? x) 0)
        ((not (pair? x)) 1)
        (else
          (+ (count-leaves (car x))
             (count-leaves (cdr x))))))
