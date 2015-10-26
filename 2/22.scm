(define (square-list items)
  (define (iter things answer)
    (if (null? things)
      answer
      (iter (cdr things)
            (cons (square (car things))
                  answer))))
  (iter items ()))

(define (square x)
  (* x x))

; 逆になる理由
; answerには先頭のものから順に入って、次々と先頭に追加されるから

;Louisの修正はconsの第一引数にリストを入れているため動かない
