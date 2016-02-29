(define (equal? a1 a2)
  (and (eq? (car a1) (car a2))
       (equal? (cdr a1) (cdr a2))))

(print (equal? '(this is a list) '(this is a list)))
(print (equal? '(this (is a) list) '(this (is a) list)))