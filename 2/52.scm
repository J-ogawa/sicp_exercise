; a
; -> 2.49

; b
(define (corner-split1 painter n)
  (if (= n 0)
    painter
    (below (beside (beside ()
                           ())
                   (corner-split1 painter (- n 1)))
           (right-split painter n ))))

(define (corner-split2 painter n)
  (if (= n 0)
    painter
    (beside (up-split painter (- n 1))
            (flip-vert (up-split painter (- n 1)))))