; 適用順と正規順

(define (p) (p))

(define (test x y)
  (if (= x 0)
    0
    y))

(test 0 (p))


; 適用順
(test 0 (p)) ; -> (p)

; 正規順
(test 0 (p)) ; -> (if (= 0 0) 0 (p)) -> (p)