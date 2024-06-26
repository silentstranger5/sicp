#lang scheme
(provide square-list)
(define (square x) (* x x))
(define (square-list items)
  (if (null? items)
      null
      (cons (square (car items))
            (square-list (cdr items)))))
(define (square-list items)
  (map square items))
