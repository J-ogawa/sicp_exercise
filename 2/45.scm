(define (split first second painter n)
  (define (iter painter n)
    (if (= n 0)
      painter
      (let ((smaller (iter painter (- n 1))))
        (first painter (second smaller smaller)))))
  iter)
