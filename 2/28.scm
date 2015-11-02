(define x (list (list 1 2) (list 3 4)))

(define (fringe l)
  (define (iter l)
    (display l)
    (newline)
    (if (not (pair? l))
      (list l)
      (if (null? (cdr l))
        (iter (car l))
        (append (iter (car l)) (iter (cdr l))))))
  (iter l))