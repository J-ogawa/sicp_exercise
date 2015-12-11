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
      (list (list))
      (filter
        (lambda(positions)(safe? k positions))
        (flatmap
          (lambda (rest-of-queens)
            (map (lambda (new-row)
                   (adjoin-position new-row k rest-of-queens))
                 (enumerate-interval 1 board-size)))
          (queen-cols (- k 1))))))
  (queen-cols board-size))

(define (adjoin-position row k rest-of-queens)
  (cons row rest-of-queens))

(define (safe? k positions)
  (define (iter one distance rest)
    (if (null? rest)
      #t
      (let ((target (car rest)))
        (and
          (not (= one target))
          (not (= one (+ target distance)))
          (not (= one (- target distance)))
          (iter one (+ distance 1) (cdr rest))))))
  (iter (car positions) 1 (cdr positions)))

(print (queens 4))
(print (queens 5))