(define (split first second painter n)
  (if (= n 0)
    painter
    (let ((smaller (split first second painter (- n 1))))
      (first painter (second smaller smaller)))))
