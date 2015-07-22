(define (* a b)
  (if (= b 0)
      0
      (if (= even? b)
          (+ (double a) (* (double a) (halve b)))
          (+ a (* a (- b 1))))))
