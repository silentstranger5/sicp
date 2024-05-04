#lang scheme
(provide deep-reverse)
(define (reverse items)
  (define (helper items result)
    (if (null? items)
        result
        (helper (cdr items) (cons (car items) result))))
  (helper items null))
(define (deep-reverse items)
  (cond ((not (pair? items)) items)
        (else (reverse (cons (deep-reverse (car items))
                             (deep-reverse (cdr items)))))))
