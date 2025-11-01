#lang sicp

(define (product-recursion term a next b)
    (if (> a b)
        1
        (* (term a)
           (product-recursion term (next a) next b)
        )
    )
)

(define (product-iteration term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a) (* result (term a))))) 
    (iter a 1))

(define (cube x) (* x x x))

(define (product-cubes-recursion a b)
    (product-recursion cube a inc b))
(define (product-cubes-iteration a b)
    (product-iteration cube a inc b))
(product-cubes-recursion 1 3)
(product-cubes-iteration 1 3)

(define (identity x) x )

(define (factorial-recursion a b)
    (product-recursion identity a inc b))
(define (factorial-iteration a b)
    (product-iteration identity a inc b))
(factorial-recursion 1 5)
(factorial-iteration 1 5)
(factorial-recursion 1 10)
(factorial-iteration 1 10)

; 2/3 * 4/3 * 4/5 * 6/5 * 6/7