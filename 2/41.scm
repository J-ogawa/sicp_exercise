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

(define (unique-trios n)
  (flatmap
    (lambda (i)
      (flatmap (lambda(j)
                 (map (lambda(k)
                        (list i j k))
                      (enumerate-interval 1 (- j 1))))
               (enumerate-interval 1 (- i 1))))
    (enumerate-interval 1 n)))

(define (sum-equal? l sum)
  (= (accumulate + 0 l) sum))

(define (sum-equal-trios n sum)
  (filter (lambda(l)(sum-equal? l sum)) (unique-trios n)))

(define (test1)
  (sum-equal-trios 10 7))

(define (test2)
  (sum-equal-trios 20 15))