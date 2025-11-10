#lang sicp

(define (accumulate-recursion combiner null-value term a next b)
    (if (> a b)
        null-value
        (combiner   (term a)
                    (accumulate-recursion combiner null-value term (next a) next b))))

(define (accumulate-iteration combiner null-value term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a) (combiner result (term a))))) 
    (iter a null-value))

(define (sum a b) (+ a b))

(define (multiply a b) (* a b))

(define (cube x) (* x x x))

(define (summation-cubes-recursion a b)
    (accumulate-recursion sum 0 cube a inc b))

(define (product-cubes-recursion a b)
    (accumulate-recursion multiply 1 cube a inc b))

(summation-cubes-recursion 1 10)
(product-cubes-recursion 1 3)

(define (summation-cubes-iteration a b)
    (accumulate-iteration sum 0 cube a inc b))

(define (product-cubes-iteration a b)
    (accumulate-iteration multiply 1 cube a inc b))

(summation-cubes-iteration 1 10)
(product-cubes-iteration 1 3)
