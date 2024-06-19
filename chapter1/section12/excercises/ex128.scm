#lang scheme
(define (square x) (* x x))
(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder
          (square (trivial-test (expmod base (/ exp 2) m) m))
          m))
        (else
         (remainder
          (* base (expmod base (- exp 1) m))
          m))))
(define (trivial-test r n)
  (cond ((or (= r 1) (= r (- n 1))) r)
        ((= (remainder (square r) n) 1) 0)
        (else r)))
(define (miller-rabin-test n)
  (define (try-it a)
    (= (expmod a (- n 1) n) 1))
  (try-it (+ 1 (random (- n 1)))))
(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((miller-rabin-test n) (fast-prime? n (- times 1)))
        (else false)))
(fast-prime? 561 50)
(fast-prime? 1105 50)
(fast-prime? 1729 50)
(fast-prime? 2465 50)
(fast-prime? 2821 50)
(fast-prime? 6601 50)