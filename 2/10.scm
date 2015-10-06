(define (div-interval-custom x y)
  (if (and (> (upper-bound y) 0) (< (lower-bound y) 0))
    (error)
    (div-interval x y)))