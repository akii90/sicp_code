#lang sicp

(define (filtered-accumulate-recursion filter combiner null-value term a next b)
    (if (> a b)
        null-value
        (combiner   (if (filter a)
                        (term a)
                        null-value)
                    (filtered-accumulate-recursion filter combiner null-value term (next a) next b))))

(define (sum a b) (+ a b))

(define (multiply a b) (* a b))

(define (square x) (* x x))

(define (identity x) x )

(define (summation-squres-odd-recursion a b)
    (filtered-accumulate-recursion odd? sum 0 square a inc b))

(summation-squres-odd-recursion 1 3)
(summation-squres-odd-recursion 1 4)
(summation-squres-odd-recursion 1 5)
