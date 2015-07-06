(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (aaaa a b)
  (new-if (> a b)
          (aaaa (- a 1) b)
          1))

(define (bbbb a b)
  (if (> a b)
          (aaaa (- a 1) b)
          1))

; 結果、
; (bbbb 1 10) -> 1
; (aaaa 1 10) -> PCがクラッシュ
