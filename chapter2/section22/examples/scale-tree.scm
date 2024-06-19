#lang scheme
(provide scale-tree)
(define (scale-tree tree factor)
  (cond ((null? tree) null)
        ((not (pair? tree)) (* factor tree))
        (else (cons (scale-tree (car tree) factor)
                    (scale-tree (cdr tree) factor)))))
(define (scale-tree tree factor)
  (map (lambda (sub-tree)
         (if (pair? sub-tree)
             (scale-tree sub-tree)
             (* factor sub-tree)))
       tree))