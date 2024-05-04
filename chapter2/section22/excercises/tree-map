#lang scheme
(provide tree-map)
(define (tree-map tree proc)
  (map (lambda (sub-tree)
         (if (pair? sub-tree)
             (tree-map sub-tree proc)
             (proc sub-tree)))
       tree))
