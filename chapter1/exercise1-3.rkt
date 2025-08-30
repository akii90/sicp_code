#lang sicp

(define (square x)
    (* x x)
)

(define (sum-of-squares x y z)
    (+ (square x) (square y) (square z))
)

; need to define a lager function
; (define (get-two-larger-of-three a b c)
;     (cond ((and (<= a b) (<= a c)) (list b c))
;           ((and (<= b a) (<= b c)) (list a c))
;           (else (list a b)))
; )

; solution from ramsayleung
; (define(largest-two-sum x y z)
;   (if (= x (larger x y))
;       (sum x (larger y z))
;       (sum y (larger z x))))

; (define (larger x y)
;   (if (< x y)y x))

; (define (sum x y)
;   (+ x y))

(define (get-least-of-three a b c)
    (cond ((and (<= a b) (<= a c)) a)
          ((and (<= b a) (<= b c)) b)
          (else c))
)

(define (sum-of-squares-of-two-larger-for-three a b c)
    (- (sum-of-squares a b c)
        (square (get-least-of-three a b c))
    )
)

; test
(sum-of-squares-of-two-larger-for-three 1 2 3)
(sum-of-squares-of-two-larger-for-three 1 1 3)
(sum-of-squares-of-two-larger-for-three 1 3 3)
(sum-of-squares-of-two-larger-for-three 3 1 3)
(sum-of-squares-of-two-larger-for-three 2 1 3)
