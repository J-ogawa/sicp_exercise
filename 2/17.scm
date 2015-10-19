(define (last-pair l)
  (let ((cdr-l (cdr l)))
    (if (null? cdr-l)
      l
      (last-pair cdr-l))))