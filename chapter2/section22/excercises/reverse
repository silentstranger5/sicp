#lang scheme
(require "fold")
(provide reverse)
; (define (reverse sequence)
;   (fold-right (lambda (x y) (append y (cons x null))) null sequence))
(define (reverse sequence)
  (fold-left (lambda (x y) (cons y x)) null sequence))
