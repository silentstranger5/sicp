#lang scheme
(provide same-parity)
(define (same-parity first . items)
  (define (helper first items)
    (cond ((null? items) items)
          ((= (remainder first 2) (remainder (car items) 2))
            (cons (car items) (helper first (cdr items))))
          (else (helper first (cdr items)))))
  (cons first (helper first items)))
