#lang sicp

; with help

(define (cube x) (* x x x))

(define (simpson-integral f a b n)
    (define (sum k)
        (if (> k n)
            0
            (+  (term k)
                (sum (next k)))))
    (define (coefficient k)
        (cond   ((or (= k 0) (= k n)) 1)
                ((even? k) 2)
                (else 4)))
    (define (term k)
        (* (f (+ a (* k h))) (coefficient k)))
    (define (next k)
        (+ k 1))
    (define h 
        (/ (- b a) n))
    (* (/ h 3.0) (sum 0)))

(simpson-integral cube 0 1 100)
(simpson-integral cube 0 1 1000)
