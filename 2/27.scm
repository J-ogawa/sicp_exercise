(define (reverse- l)
  (define (iter src dst)
    (if (null? src)
      dst
      (iter (cdr src) (cons (car src) dst))))
  (iter l (list)))

(define (deep-reverse- l)
  (define (iter src dst)
    (if (null? src)
      dst
      (if (pair? (car src))
        (iter (cdr src) (cons (iter (car src) (list)) dst))
        (iter (cdr src) (cons (car src) dst)))))
  (iter l (list)))

(define (deep-reverse l)
  (if (pair? l)
    (reverse (map deep-reverse l))
    l))
