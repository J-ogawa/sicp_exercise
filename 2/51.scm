(define (below1 painter1 painter2)
  (let ((split-point (make-vect 0.0 0.5)))
    (let ((paint-down
            (transform-painter painter1
                               (make-vect 0.0 0.0)
                               (make-vect 0.99 0.0)
                               split-point))
          (paint-up
            (transform-painter painter2
                               split-point
                               (make-vect 0.99 0.0)
                               (make-vect 0.0 0.99))))
      (lambda (frame)
        (paint-down frame)
        (paint-up frame)))))

(define (below2 painter1 painter2)
  (let ((split-point (make-vect 0.0 0.5)))
    (let ((paint-down
            (transform-painter painter1
                               (make-vect 0.0 0.0)
                               (make-vect 0.99 0.0)
                               split-point))
          (paint-up
            (flip-horiz
              (lotate180
                (transform-painter painter1
                                   (make-vect 0.0 0.0)
                                   (make-vect 0.99 0.0)
                                   split-point)))))
      (lambda (frame)
        (paint-down frame)
        (paint-up frame)))))

; sicp-pict format
(define (below1 painter1 painter2)
  (let ((split-point (make-vect 0.0 0.5)))
    (let ((paint-down
            ((transform-painter
                               (make-vect 0.0 0.0)
                               (make-vect 0.99 0.0)
                               split-point) painter1))
          (paint-up
            ((transform-painter
                               split-point
                               (make-vect 0.99 0.0)
                               (make-vect 0.0 0.99)) painter2)))
      (lambda (frame)
        (paint-down frame)
        (paint-up frame)))))

(define (below2 painter1 painter2)
  (let ((split-point (make-vect 0.0 0.5)))
    (let ((paint-down
            ((transform-painter
                               (make-vect 0.0 0.0)
                               (make-vect 0.99 0.0)
                               split-point) painter1))
          (paint-up
            (flip-horiz
              (lotate180
                ((transform-painter
                                   (make-vect 0.0 0.0)
                                   (make-vect 0.99 0.0)
                                   split-point) painter2)))))
      (lambda (frame)
        (paint-down frame)
        (paint-up frame)))))