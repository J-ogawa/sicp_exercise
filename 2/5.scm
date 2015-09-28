(define (cons a b)
  (define (itelate sum a b)
    (if (> a 0)
      (itelate (* sum 2) (- a 1) b)
      (if (> b 0)
        (itelate (* sum 3) a (- b 1))
        sum)))
  (itelate 1 a b))

(define (car c)
  (define (itelate c a)
  (if (even? c)
    (itelate (/ c 2) (+ a 1))
    a))
  (itelate c 0))

(define (cdr c)
  (define (itelate c b)
    (if (even? c)
      (itelate (/ c 2) b)
      (if (> c 1)
        (itelate (/ c 3) (+ b 1))
        b)))
  (itelate c 0))


(define (test1)
  (cons 2 5))

(define (test2)
  (car (cons 2 5)))

(define (test3)
  (cdr (cons 2 5)))
