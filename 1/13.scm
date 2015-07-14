; A: 0 <= abs(((1 + sqrt(5)) / 2)^n - Fib(n)) <= 1 の証明をすれば良い

; B: Fib(n) = (phy^n - psi^n) / sqrt(5) を証明する意味とは？

; Bの証明
; n = 0 : (phy^0 - psi^0) / sqrt(5) -> 0
; n = 1 : (phy^1 - psi^1) / sqrt(5) -> sqrt(5) / sqrt(5) -> 1
; n = 2 : (phy^2 - psi^2) / sqrt(5) -> (phy + psi)(phy - psi) / sqrt(5) -> 1

; Fib(n+2) = Fib(n+1) + Fib(n)
; -> (phy^(n+1) - psi^(n+1)) / sqrt(5) + (phy^n - psi^n) / sqrt(5)
; -> (phy^(n+1) - psi^(n+1) + phy^n - psi^n) / sqrt(5)
; -> (phy^n(phy + 1) - psi^n(psi + 1)) / sqrt(5)
; -> (phy^n((3+sqrt(5))/2) - psi^n((3-sqrt(5))/2)) / sqrt(5)
; -> (phy^n * phy^2 - psi^n * psi^2) / sqrt(5)
; -> (psy^(n+2) - psi^(n+2)) / sqrt(5)
; -> QED

; Aの証明
; A -> 0 <= abs(phy^n - phy^n + psi^n) <= 1
;   -> 0 <= abs(psi^n) <= 1
;   -> 0 <= abs(((1-sqrt(5))/2)^n) <= 1

; 2 < sqrt(5) < 3
; -2 < 1-sqrt(5) < -1
; -1 < (1-sqrt(5))/2 < -1/2
; これより、Aは正しい QED

; Aの証明より、Fib(n)がphy^n / sqrt(5) に最も近い整数であると言える。