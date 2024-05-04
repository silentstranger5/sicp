#lang scheme
(provide pascal)
(define (pascal row column)
  (cond ((or (< row 1) (< column 0) (> column row)) 0)
        ((or (= column 1) (= column row)) 1)
        (else (+ (pascal (- row 1) (- column 1))
                 (pascal (- row 1) column)))))
