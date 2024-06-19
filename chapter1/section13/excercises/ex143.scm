#lang scheme
(provide repeated)
(require "ex142")
(define (repeated f n)
  (if (= n 1)
      f
      (compose f (repeated f (- n 1)))))
