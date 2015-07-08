; 以下のimproveを使ってイテレートする
(define (improve guess x)
  (/
    (+ (/ x (square y))
       (* y 2))
    3))