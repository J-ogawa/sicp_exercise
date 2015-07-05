; 三つの数を引数としてとり、大きい二つの数の二乗の和を返す手続きを定義せよ

(define (one-three x y z)
  (cond ((and (< x y) (< x z)) (+ (* y y) (* z z)))
        ((and (< y x) (< y z)) (+ (* x x) (* z z)))
        ((and (< z x) (< z y)) (+ (* x x) (* y y)))))