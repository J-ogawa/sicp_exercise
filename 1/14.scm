; スペースは木の深さということでθ(n)
; ステップ数はθ(n^5) これがわからない


(define (cc-graph amount kinds-of-coins)

  (define display-node (lambda (label amount kinds-of-coins)
                         (begin
                           (display "  ")
                           (display label)
                           (display " [label=\"")
                           (display `(cc ,amount ,kinds-of-coins))
                           (display "\"];")
                           (newline))))

  (define display-edge (lambda (a b)
                         (begin
                           (display "  ")
                           (display a)
                           (display " -> ")
                           (display b)
                           (display ";")
                           (newline))))

  (define base-case (lambda (amount kinds-of-coins)
                      (or (< amount 0)
                          (= kinds-of-coins 0)
                          (= amount 0))))

  (define left (lambda (label)
                 (string-append label "l")))

  (define right (lambda (label)
                  (string-append label "r")))


  ; label is the unique label of the function invocation
  (define (recurse label amount kinds-of-coins)
    (if (base-case amount kinds-of-coins)
      (display-node label amount kinds-of-coins)
      (begin
        (display-node label amount kinds-of-coins)
        (display-edge label (left label))
        (display-edge label (right label))
        (recurse (left label) amount (- kinds-of-coins 1))
        (recurse (right label)
                 (- amount (first-denomination kinds-of-coins))
                 kinds-of-coins))))

  (begin
    (display "digraph {")
    (newline)
    (recurse "s" amount kinds-of-coins)
    (newline)
    (display "}")))