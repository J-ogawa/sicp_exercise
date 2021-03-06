(define (accumulate op initial sequence)
  (if (null? sequence)
    initial
    (op (car sequence)
        (accumulate op initial (cdr sequence)))))

(define (accumulate-n op init seqs)
  (if (null? (car seqs))
    (list)
    (cons (accumulate op init (map (lambda(seq)(car seq)) seqs))
          (accumulate-n op init (map (lambda(seq)(cdr seq)) seqs)))))

(define (dot-product v w)
  (accumulate + 0 (map * v w)))

(define (matrix-*-vector m v)
  (map (lambda(v-of-m)(dot-product v v-of-m)) m))
 ; (map (lambda(v-of-m)(map * v v-of-m)) m))

(define (transpose mat)
  (accumulate-n cons (list) mat))
 ;(accumulate-n (lambda(v1 v2)(cons v1 v2)) (list) mat)) it is same

(define (matrix-*-matrix m n)
  (let ((cols (transpose n)))
    (map (lambda(mv)(matrix-*-vector cols mv)) m)))

(define (test-matrix-*-vector)
  (matrix-*-vector (list (list 1  2  3  4)
                         (list 5  6  7  8)
                         (list 9 10 11 12))
                   (list 2 3 4 5)))

(define (test-transpose)
  (transpose (list (list 1  2  3  4)
                   (list 5  6  7  8)
                   (list 9 10 11 12))))

(define (test-matrix-*-matrix)
  (matrix-*-matrix (list (list 1  2  3  4)
                         (list 5  6  7  8)
                         (list 9 10 11 12))
                   (list (list  2  3  4)
                         (list  5  6  7)
                         (list  8  9 10)
                         (list 11 12 13))))

(define (test-matrix-*-matrix2)
  (matrix-*-matrix (list (list 1 2 3)
                         (list 4 5 6))
                   (list (list 7 10)
                         (list 8 11)
                         (list 9 12))))