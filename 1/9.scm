(define (+ a b)
  (if (= a 0)
    b
    (inc (+ (dec a) b))))

(define (- a b)
  (id (= a 0)
      b
      (+ (dec a) (inc b))))


(define (+ 4 5)
  (if (= 4 0)
    5
    (inc (+ 3 5)))) ; -> (inc (inc (+ 2 5))) -> (inc (inc (inc (inc (+ 0 5)))))
                    ; -> (inc (inc (inc (inc 5)))) -> 9 反復