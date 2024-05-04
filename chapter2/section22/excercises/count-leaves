#lang scheme
(require "../examples/accumulate")
(provide count-leaves)
(define (count-leaves t)
  (accumulate + 0 (map (lambda (x) 
                         (if (pair? x)
                             (count-leaves x)
                             1))
                        t)))
