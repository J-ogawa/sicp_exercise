(define (make-vect x y)
  (cons x (list y)))

(define (xcor-vect v)
  (car v))

(define (ycor-vect v)
  (cadr v))

(define (add-vect v1 v2)
  (make-vect (+ (xcor-vect v1) (xcor-vect v2)) (+ (ycor-vect v1) (ycor-vect v2))))

(define (sub-vect v1 v2)
  (make-vect (- (xcor-vect v1) (xcor-vect v2)) (- (ycor-vect v1) (ycor-vect v2))))

(define (scale-vect v s)
  (make-vect (* (xcor-vect v) s) (* (ycor-vect v) s)))


(define (make-segment v1 v2)
  (cons v1 (list v2)))

(define (start-segment s)
  (car s))

(define (end-segment s)
  (add-vect (car s) (cadr s)))

(print (start-segment (make-segment (make-vect 1 2) (make-vect 3 4))))
(print (end-segment (make-segment (make-vect 1 2) (make-vect 3 4))))
