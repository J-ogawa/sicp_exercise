(define (fold-left op initial sequence)
  (define (iter result rest)
    (if (null? rest)
      result
      (iter (op result (car rest))
            (cdr rest))))
  (iter initial sequence))

(define (reverse-right sequence)
  (fold-right (lambda(x y)(append y (list x))) (list) sequence))

(define (reverse-left sequence)
  (fold-left (lambda(x y)(append (list y) x)) (list) sequence))

(define (test1)
  (reverse-right (list 1 2 3 4)))

(define (test2)
  (reverse-left (list 1 2 3 4)))