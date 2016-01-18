(define (flip-horiz painter)
  (transform-painter painter
                     (make-vect 0.99 0)
                     (make-vect 0 0)
                     (make-vect 0.99 0.99)))

; sicp-pict format
(define (flip-horiz painter)
  ((transform-painter (make-vect 0.99 0)
                      (make-vect 0 0)
                      (make-vect 0.99 0.99) painter)))

(define (lotate180 painter)
  ((transform-painter (make-vect 0.99 0.99)
                      (make-vect 0 0.99)
                      (make-vect 0.99 0)) painter))

(define (lotate270 painter)
  ((transform-painter (make-vect 0.99 0)
                      (make-vect 0.99 0.99)
                      (make-vect 0 0)) painter))