#lang scheme
(require "accumulate")
(require math/number-theory)
(provide
  flatmap
  enumerate-interval
  prime-sum?
  make-pair-sum
  prime-sum-pairs
  remove
  permutations)
(define (flatmap proc seq)
  (accumulate append null (map proc seq)))
(define (enumerate-interval low high)
  (if (> low high)
      null
      (cons low (enumerate-interval (+ low 1) high))))
(define (prime-sum? pair)
  (prime? (+ (car pair) (cadr pair))))
(define (make-pair-sum pair)
  (list (car pair) (cadr pair) (+ (car pair) (cadr pair))))
(define (prime-sum-pairs n)
  (map make-pair-sum
    (filter prime-sum? (flatmap
                         (lambda (i)
                           (map (lambda (j) (list i j))
                             (enumerate-interval 1 (- i 1))))
                         (enumerate-interval 1 n)))))
(define (remove item sequence)
  (filter (lambda (x) (not (= x item)))
          sequence))
(define (permutations s)
  (if (null? s)
      (list null)
      (flatmap (lambda (x)
                 (map (lambda (p) (cons x p))
                      (permutations (remove x s))))
               s)))
