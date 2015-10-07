; 幅の中央値に対する比: (/ w c) -> 比に対する幅: (* p c)


(define (make-center-percent c p)
  (make-center-width c (* p c)))

(define (percent i)
  (/ (width i) (center i)))

