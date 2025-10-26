#lang sicp

(define (fact-iter product counter max-count)
    (if (> counter max-count)
        product
        (fact-iter (* product counter)
                   (+ counter 1)
                   max-count
        )
    )
)

(define (factorial n)
    (fact-iter 1 1 n)
)

(factorial 6)
(factorial 4)


(define (factorial2 n)
    (define (iter product counter)
        (if (> counter n)
            product
            (iter (* product counter)
                  (+ counter 1)
            )
        )
    )
    (iter 1 1)
)

(factorial2 6)
(factorial2 4)
