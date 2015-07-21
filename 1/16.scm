(define (iter a b n)
  (cond ((= n 0) a)
        ((even? n) (iter a (* b b) (/ n 2)))
        (else (iter (* a b) b (- n 1)))))

; 回答を見ないと解けなかった。
; そもそもの問題を理解していなかった。
