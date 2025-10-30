#lang sicp

(define (cube x) (* x x x))

(define (sum-iteration term a next b)
    ; result is the status
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a) (+ result (term a))))) 
    (iter a 0))

(define (sum-cubes a b)
    (sum-iteration cube a inc b))

(sum-cubes 1 10)

; (iter 1 0)
; (iter 2 (+ 0 1)) 1
; (iter 3 (+ 0 1 8)) 2
; (iter 4 (+ 0 1 8 27)) 3
; (iter 5 (+ 0 1 8 27)) 4 
; (iter 6 (+ 0 1 8 27)) 5
