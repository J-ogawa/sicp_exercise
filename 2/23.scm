(define (for-each2 proc items)
  (define (operate proc items)
    (proc (car items))
    (for-each2 proc (cdr items)))
  (if (null? items)
    ()
    (operate proc items)))

(define (for-each3 proc items)
  (cond ((not (null? items))
    ((lambda(x) (proc (car x)) (for-each3 proc (cdr x))) items))))