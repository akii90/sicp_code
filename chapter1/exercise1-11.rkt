#lang sicp

(define (f-recursion n)
    (if (< n 3) 
        n
        (+  (f-recursion (- n 1))
            (*  2
                (f-recursion (- n 2))
            )
            (*  3
                (f-recursion (- n 3))
            )
        )
    )
)

(f-recursion 0)
(f-recursion 1)
(f-recursion 2)
(f-recursion 3)
(f-recursion 4)
(f-recursion 5)


(define (iter a b c count)
    (if (= count 2)
        a
        (iter (+ a (* 2 b) (* 3 c) )
              a
              b
              (- count 1)
        )
    )
)

(define (f-iteration n)
    (if (< n 3)
        n
        (iter 2 1 0 n)
    )
)

(f-iteration 0)
(f-iteration 1)
(f-iteration 2)
(f-iteration 3)
(f-iteration 4)
(f-iteration 5)
