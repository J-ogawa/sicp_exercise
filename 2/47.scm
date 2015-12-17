(define (make-frame1 origin edge1 edge2)
  (list origin edge1 edge2))

(define (origin-frame1 f)
  (car f))

(define (edge1-frame1 f)
  (cadr f))

(define (edge2-frame1 f)
  (caddr f))

(define (make-frame2 origin edge1 edge2)
  (cons origin (cons edge1 edge2)))

(define (origin-frame2 f)
  (car f))

(define (edge1-frame2 f)
  (cadr f))

(define (edge2-frame2 f)
  (cddr f))

(define (test)
  (let ((frame1 (make-frame1 (list 0 0) (list 1 3) (list 2 4)))
        (frame2 (make-frame2 (list 0 0) (list 1 3) (list 2 4))))
  (print (origin-frame1 frame1))
  (print (edge1-frame1 frame1))
  (print (edge2-frame1 frame1))
  (print (origin-frame2 frame2))
  (print (edge1-frame2 frame2))
  (print (edge2-frame2 frame2))))

(test)
