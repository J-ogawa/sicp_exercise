(define (accumulate op initial sequence)
  (if (null? sequence)
    initial
    (op (car sequence)
        (accumulate op initial (cdr sequence)))))


(define (map p sequence)
  (accumulate (lambda (x y) (cons (p x) y)) (list) sequence))

(define (append l1 l2)
  (accumulate cons l2 l1))

(define (length sequence)
  (accumulate (lambda (x y) (+ y 1)) 0 sequence))


(define (test-map)
  (map (lambda (x) (+ x 1)) (list 1 2 3)))

(define (test-append)
  (append (list 1 2) (list 3 4)))

(define (test-length)
  (length (list 1 2 3 4)))