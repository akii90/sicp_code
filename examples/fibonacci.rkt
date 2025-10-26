#lang sicp

; recursion, easy to understand, but less effective
(define (fib1 n)
  (cond((= n 0) 0)
       ((= n 1) 1)
       (else (+ (fib1(- n 1)) 
                (fib1(- n 2))
             )
       )
  )
)

(fib1 1)
(fib1 2)
(fib1 3)
(fib1 4)
(fib1 5)
(fib1 40)
; (fib1 50)

; tree recursion transfer to linear iteration, more effective, hard to understand
; a = a + b, b = a(old), b + a loop
(define (fib-iterate a b count)
    (if (= count 0) 
        b
        (fib-iterate (+ a b) a (- count 1))
    )
)

(define (fib2 n)
    fib-iterate(1 0 n)
)

(fib1 1)
(fib1 2)
(fib1 3)
(fib1 4)
(fib1 5)
(fib1 40)
; (fib1 50)

; example
; fib2 3
; fib-iterate 1 0 3
; fib-iterate 1 1 2
; fib-iterate 2 1 1
; fib-iterate 3 2 0