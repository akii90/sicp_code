#lang sicp

(define (square a)
    (* a a)
)

(define (average a b)
    (/ (+ a b) 2)
)

; stop condition
(define (good-enough? guess x)
    (< (abs (- guess (improve guess x))) 
        (* guess 0.001)
    )
)

(define (improve guess x)
    (average (/ x guess) guess)
)

(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)
    )
)

(define (sqrt x)
    (sqrt-iter 1.0 x)
)

(display "Test1:")
(sqrt 9)
(display "Test2:")
(sqrt (+ 100 37))
(display "Test3:")
(sqrt (+ (sqrt 2) (sqrt 3)))
(display "Test4:")
(square (sqrt 1000))
