#lang scheme
(provide cc)
(define (cc amount coin-values)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (no-more? coin-values)) 0)
        (else
          (+ (cc amount
               (except-first-denomenation
                coin-values))
             (cc (- amount
               (first-denomenation
                coin-values))
               coin-values)))))
(define (no-more? coin-values)
  (null? coin-values))
(define (except-first-denomenation coin-values)
  (cdr coin-values))
(define (first-denomenation coin-values)
  (car coin-values))
