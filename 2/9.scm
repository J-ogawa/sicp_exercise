(add-interval x y)

;->
(make-interval (+ (lower-bound x) (lower-bound y))
               (+ (upper-bound x) (upper-bound y)))

;(x + y)'s width ->
(/ (- (+ (upper-bound x) (upper-bound y))
      (+ (lower-bound x) (lower-bound y)))
   2)
;->
(/ (+ (- (upper-bound x) (lower-bound x))
      (- (upper-bound y) (lower-bound y)))
   2)
;->
(/ (+ (width x)
      (width y))
   2)



(sub-interval x y)

;->
(make-interval (- (lower-bound x) (lower-bound y))
               (- (upper-bound x) (upper-bound y)))

;(x - y)'s width ->
(/ (- (- (upper-bound x) (upper-bound y))
      (- (lower-bound x) (lower-bound y)))
   2)
;-> (ux - uy) - (lx - ly) ;-> (ux -lx) - (uy - ly)
(/ (- (- (upper-bound x) (lower-bound x))
      (- (upper-bound y) (lower-bound y)))
   2)
;->
(/ (- (width x)
      (width y))
   2)
