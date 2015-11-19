(define (accumulate op initial sequence)
  (if (null? sequence)
    initial
    (op (car sequence)
        (accumulate op initial (cdr sequence)))))

(define (count-leaves t)
  (accumulate + 0 (map (lambda (x) (cond
                                     ((null? x) 0)
                                     ((not (pair? x)) 1)
                                     ((not (pair? (car x))) (+ (count-leaves (list (car x))) (count-leaves (cdr x))))
                                     (else (+ (count-leaves (car x)) (count-leaves (cdr x))))))
                       t)))

(define (test)
  (count-leaves (list (list 1 2) (list 3 4 (list 5 6 7 8 9 (list 10))))))