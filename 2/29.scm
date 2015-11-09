(define (left-branch m)
  (display "left-branch " )
  (display m)
  (newline)
  (car m))

(define (right-branch m)
  (display "right-branch " )
  (display m)
  (newline)
  (car (cdr m)))

(define (branch-length b)
  (display "branch-length " )
  (display b)
  (newline)
  (car b))

(define (branch-structure b)
  (display "branch-structure " )
  (display b)
  (newline)
  (display "result ")
  (display (car (cdr b)))
  (newline)
  (car (cdr b)))

(define (branch-weight b)
  (display "branch-weight " )
  (display b)
  (newline)
  (if (pair? (branch-structure b))
    (+ (branch-weight (left-branch (branch-structure b)))
       (branch-weight (right-branch (branch-structure b))))
    (branch-structure b)))

(define (total-weight mobile)
  (+ (branch-weight (left-branch mobile))
     (branch-weight (right-branch mobile))))

(define (balanced? mobile)
  (display "balanced? " )
  (display mobile)
  (newline)
  (if (pair? mobile)
    (let ((left (left-branch mobile))
          (right (right-branch mobile)))
      (if (and
            (= (* (branch-length left) (branch-weight left))
               (* (branch-length right) (branch-weight right)))
            (balanced? (branch-structure left))
            (balanced? (branch-structure right)))
        #t
        #f
        ))
    #t))

(define (test1)
  (balanced? (list
               (list 1 2)
               (list 1 2))))

(define (test)
  (balanced? (list (list 1
                         (list (list 2 5) (list 3 (list (list 1 3) (list 3 1)))))
                   (list 2 9))))