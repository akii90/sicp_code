#lang sicp

(inc 42)
(+ 137 349)
(- 1000 334)
(* 5 99)
(/ 10 5)
(+ 2.7 10)
(* 2 (/ 10 5))
(+ 2 4 8)


(+ (* 3 (+ (* 2 4) (+ 3 5))) (+ (- 10 7) 6))
(+ (* 3
      (+ (* 2 4)
         (+ 3 5)))
   (+ (- 10 7)
      6))

(define size 2)
size

(* 5 size)

(define (square x)
  ( * x x )
)
(square 3)
(square (+ 2 5))
(square(square 2))

(define (sum-of-squares x y)
  (+ (square x) (square y))
)
(sum-of-squares 3 4)

(define (f a)
  (sum-of-squares (+ a 1) (* a 2))
)
(f 5)

;conditional expression
(define (abs1 x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))
  )
)
(define (abs2 x)
  (cond ((< x 0) (- x))
        (else x)
  )
)
;if is different from cond
(define (abs3 x)
  (if (< x 0)
      (- x)
      x
  )
)

(define (get-two-larger-of-three a b c)
    (cond ((and (<= a b) (<= a c)) (list b c))
          ((and (<= b a) (<= b c)) (list a c))
          (else (list a b)))
)
(get-two-larger-of-three 1 2 3)
(get-two-larger-of-three 3 2 1)
(get-two-larger-of-three 1 3 2)
(get-two-larger-of-three 2 3 1)
(get-two-larger-of-three 2 2 1)
(get-two-larger-of-three 2 2 3)
(get-two-larger-of-three 2 3 3)

;; 示例：如何使用 get-two-larger-of-three 返回的列表元素
(define two-larger (get-two-larger-of-three 10 20 5))
(display "从 (get-two-larger-of-three 10 20 5) 获得的结果：")
(display two-larger)
(newline)

(define largest (car two-larger))
(define second-largest (cadr two-larger))

(display "最大的数是：")
(display largest)
(newline)

(display "第二大的数是：")
(display second-largest)
(newline)

(abs (- 1 2))

(define (A x y) (
  cond ((= y 0) 0)
      ((= x 0) (* 2 y))
      ((= y 1) 2)
      (else (A (- x 1) (A x (- y 1))))))

(A 0 5)
(A 1 10)
; (A 2 8)
; (A 2 5)
(A 2 4)
(A 2 3)
(A 2 2)
(A 2 1)
(A 3 3)

(+ 1 1 1)
(* 1 2 3)