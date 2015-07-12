; recursive
(define (f n)
  (if (< n 3)
    n
    (+ (f (- n 1))
       (f (* 2 (- n 2)))
       (f (* 3 (- n 3))))))

; iterative
(define (f n)
  (define (iter a b c count)
    (if (= count 0)
      a
      (iter b c (+ c (* 2 b) (* 3 a)) (- count 1))))
  (iter 0 1 2 n))