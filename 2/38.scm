(define (fold-left op initial sequence)
  (define (iter result rest)
    (if (null? rest)
      result
      (iter (op result (car rest))
            (cdr rest))))
  (iter initial sequence))

(define (test1)
  (fold-right / 1 (list 1 2 3))) ; -> 3/2

(define (test2)
  (fold-left / 1 (list 1 2 3)))  ; -> 1/6

(define (test3)
  (fold-right list (list) (list 1 2 3))) ; -> (1 (2 (3 ())))

(define (test4)
  (fold-left list (list) (list 1 2 3)))  ; -> (((() 1) 2) 3)

; fold-rightとfold-leftが同じになるには引数の順を入れ替えても結果が同じになるop
