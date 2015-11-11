(define (square-tree1 tree)
  (cond ((null? tree) (list))
        ((not (pair? tree)) (square tree))
        (else (cons (square-tree (car tree))
                    (square-tree (cdr tree))))))

(define (test1)
  (square-tree1 (list 1 (list 2 3 (list 4 5)))))

(define (square-tree2 tree)
  (map (lambda (sub-tree)
         (if (pair? sub-tree)
           (square-tree2 sub-tree)
           (square sub-tree)))
       tree))

(define (test2)
  (square-tree2 (list 1 (list 2 3 (list 4 5)))))
