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

(define (frame-coord-map frame)
  (lambda (v)
    (add-vect
      (origin-frame frame)
      (add-vect (scale-vect (xcor-vect v)
                            (edge1-frame frame))
                (scale-vect (ycor-vect v)
                            (edge2-frame frame))))))

(define (segments->painter segment-list)
  (lambda (frame)
    (for-each
      (lambda (segment)
        (draw-line
          ((frame-coord-map frame) (start-segment segment))
          ((frame-coord-map frame) (end-segment segment))))
      segment-list)))

; a.
(segments->painter (list (make-segment (make-vect 0 0) (make-vect 0 0.99))
                         (make-segment (make-vect 0 0.99) (make-vect 0.99 0.99))
                         (make-segment (make-vect 0.99 0.99) (make-vect 0.99 0))
                         (make-segment (make-vect 0.99 0) (make-vect 0 0))))

; b.
(segments->painter (list (make-segment (make-vect 0 0) (make-vect 0.99 0.99))
                         (make-segment (make-vect 0 0.99) (make-vect 0.99 0))))

; c.
(segments->painter (list (make-segment (make-vect 0.5 0) (make-vect 0.99 0.5))
                         (make-segment (make-vect 0.99 0.5) (make-vect 0.5 0.99))
                         (make-segment (make-vect 0.5 0.99) (make-vect 0 0.5))
                         (make-segment (make-vect 0 0.5) (make-vect 0.5 0))))

; d.
(segments->painter (list (make-segment (make-vect 0 0.6) (make-vect 0.1 0.5))
                         (make-segment (make-vect 0.1 0.5) (make-vect 0.2 0.6))
                         (make-segment (make-vect 0.2 0.6) (make-vect 0.3 0.55))
                         (make-segment (make-vect 0.3 0.55) (make-vect 0.2 0))
                         (make-segment (make-vect 0.4 0) (make-vect 0.5 0.1))
                         (make-segment (make-vect 0.5 0.1) (make-vect 0.6 0))
                         (make-segment (make-vect 0.7 0) (make-vect 0.6 0.5))
                         (make-segment (make-vect 0.6 0.5) (make-vect 0.99 0.3))
                         (make-segment (make-vect 0 0.7) (make-vect 0.1 0.65))
                         (make-segment (make-vect 0.1 0.65) (make-vect 0.2 0.67))
                         (make-segment (make-vect 0.2 0.67) (make-vect 0.4 0.67))
                         (make-segment (make-vect 0.4 0.67) (make-vect 0.3 0.8))
                         (make-segment (make-vect 0.3 0.8) (make-vect 0.4 0.99))))
