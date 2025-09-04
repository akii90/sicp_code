#lang sicp

(define (square a)
    (* a a)
)

(define (cube a)
    (* a a a)
)

; stop condition
(define (good-enough? guess x)
    (< (abs (- guess (improve guess x))) 
        (* guess 0.001)
    )
)

(define (improve guess x)
    (/ (+ (/ x (square guess)) 
          (* guess 2))
        3)
)

(define (cbrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (cbrt-iter (improve guess x) x)
    )
)

(define (cbrt x)
    (cbrt-iter 1.0 x)
)

(display "Test1:")
(cbrt 27)
(display "Test2:")
(cbrt (+ (cbrt 2) (cbrt 3)))
(display "Test3:")
(cube (cbrt 1000))
