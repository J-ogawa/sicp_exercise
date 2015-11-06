(define (left-branch m)
  (car b))

(define (right-branch m)
  (car (cdr m)))

(define (branch-length b)
  (car b))

(define (branch-structure b)
  (car (cdr b)))

(define (total-weight mobile)
  (define (weight b)
    (if (pair? (branch-structure b))
      (+ (weight (left-branch (branch-structure b)))
         (weight (right-branch (branch-structure b))))
      (branch-structure b)))
  (+ (weight (left-branch mobile))
     (weight (right-branch mobile))))