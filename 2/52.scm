; a
; -> 2.49

; b
(define (corner-split painter n)
  (if (= n 0)
    painter
    (let ((up (up-split painter (- n 1)))
          (right (right-split painter (- n 1))))
      (let ((top-left (beside (beside up up) (beside up up)))
            (bottom-right (below right right))
            (corner (corner-split painter (- n 1))))
        (beside (below painter (beside top-left top-left))
                (below bottom-right corner))))))

; c
(define (square-of-four tl tr bl br)
  (lambda (painter)
    (let ((top (beside (tl painter) (tr painter)))
          (bottom (beside (bl painter) (be painter))))
      (below bottom top))))

(define (square-limit painter n)
  (let ((combine4 (square-of-four flip-horiz identity
                                  (if (= n 0) (flip-horiz rotate) rotate180) flip-vert)))
    (combine4 (corner-split painter n))))