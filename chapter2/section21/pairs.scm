#lang scheme
(provide cons car cdr)
(define (pow a b)
  (if (= b 0)
      1
      (* a (pow a (- b 1)))))
(define (cons a b)
  (* (pow 2.0 a) (pow 3.0 b)))
(define (car z)
  (if (> (remainder z 2.0) 0)
      0
      (+ 1 (car (/ z 2.0)))))
(define (cdr z)
  (if (> (remainder z 3.0) 0)
      0
      (+ 1 (cdr (/ z 3.0)))))
