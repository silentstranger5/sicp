#lang scheme
(provide product product-iter wallis)
(define (square x) (* x x))
(define (product term a next b)
  (if (> a b)
      1
      (* (term a) (product term (next a) next b))))
(define (product-iter term a next b)
  (define (iter a product)
    (if (> a b)
        product
        (iter (next a) (* (term a) product))))
  (iter a 1))
(define (wallis n)
  (define (term n)
    (define 2n (* 2 n))
    (/ (* 2n (+ 2n 2))
       (square (+ 2n 1))))
  (define (inc n) (+ n 1))
  (* 4.0 (product-iter term 1 inc n)))
