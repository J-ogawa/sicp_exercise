(define (append l1 l2)
  (if (null? l1)
    l2
    (cons (car l1) (append (cdr l1) l2))))

(define (reverse l)
    (if (null? (cdr l))
      l
      (append (reverse (cdr l)) (list (car l)))))

(define (reverse2 l)
  (define (iter src dst)
    (if (null? src)
      dst
      (iter (cdr src) (cons (car src) dst))))
  (iter l (list)))

