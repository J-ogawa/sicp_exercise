(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (make-segment p1 p2)
  (cons p1 p2))

(define (start-segment seg)
  (car seg))

(define (end-segment seg)
  (cdr seg))

(define (make-point x y)
  (cons x y))

(define (x-point p)
  (car p))

(define (y-point p)
  (cdr p))

(define (midpoint-segment seg)
  (let (
        (p1 (start-segment seg))
        (p2 (end-segment seg)))
    (let (
          (x1 (x-point p1))
          (x2 (x-point p2))
          (y1 (y-point p1))
          (y2 (y-point p2)))
      (print-point
        (make-point
          (/ (+ x2 x1) 2)
          (/ (+ y2 y1) 2))))))

(define (test)
  (let (
        (p1 (make-point 1 2))
        (p2 (make-point 3 3)))
    (let (
          (seg (make-segment p1 p2)))
      (midpoint-segment seg))))
