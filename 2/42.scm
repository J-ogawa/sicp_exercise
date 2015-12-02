(define (accumulate op initial sequence)
  (if (null? sequence)
    initial
    (op (car sequence)
        (accumulate op initial (cdr sequence)))))

(define (flatmap proc seq)
  (accumulate append (list) (map proc seq)))

(define (enumerate-interval a b)
  (define (iter a b l)
    (if (> a b)
      l
      (iter a (- b 1) (cons b l))))
  (iter a b (list)))

(define (queens board-size)
  (define (queen-cols k)
    (if (= k 0)
      (list (list (list)))
;      (filter
;        (lambda(positions)(safe? k positions))
        (flatmap
          (lambda (rest-of-queens) (map (lambda (new-row)(adjoin-position new-row k rest-of-queens))
                                        (enumerate-interval 1 board-size)))
          (queen-cols (- k 1)))))
  ;)
  (queen-cols board-size))

(define (adjoin-position row k rest-of-queens)
  (map
    (lambda(positions)(cons (list row k) positions))
    rest-of-queens))

  (define (same-column? pos1 pos2)

   )


(define (safe? k positions)

  (let (col (length (car positions)))
  (define (iter k col rest-positions)
    (if
      (or (

(print (length (list 1 2 3)))
(print (queens 3))

;(define (safe? k positions)
;  (define (iter