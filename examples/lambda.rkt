#lang sicp

(define (square x) (* x x))

(define (plus4 x) (+ x 4))
(define plus4-lambda (lambda (x) (+ x 4)))

(plus4 2)
(plus4-lambda 2)

((lambda (x) (+ x 4)) 2)

((lambda (x y z) (+ x y z))
    1 2 3)

(define (f x y)
    (define (f-helper a b)
        (+  (* x (square a))
            (* y b)
            (* a b)))
    (f-helper   (+ 1 (* x y)) 
                (- 1 y)))

(define (f-lambda x y)
    ((lambda (a b)
        (+  (* x (square a))
            (* y b)
            (* a b)))
     (+ 1 (* x y)) 
     (- 1 y)))

; let is interpreted as lambda expression
(define (f-let x y)
    (let ((a (+ 1 (* x y)))
          (b (- 1 y)))
        (+  (* x (square a))
            (* y b)
            (* a b))))

; demo for let's scope, 5 and 3
(define x 5)
x
(+  (let ((x 3)) 
        (+ x (* x 10)))
    x)

; if use same var name in expr, using outer var
(define z 2)
z
(let ((z 3) 
      (y (+ z 2))) 
    (* z y))
