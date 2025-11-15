#lang sicp

(define tolerance 0.00001)
(define (fixed-point f first-guess)
    (define(close-enough? v1 v2)
        (<  (abs (- v1 v2)) 
            ; (* (abs v1 ) tolerance)))
            tolerance))
    (define (try guess)
        (display guess)
        (newline)
        (let ((next (f guess))) 
            (if (close-enough? guess next) 
                ; guess, resultable, less conventional
                next 
                (try next))))
            
    (try first-guess))

(fixed-point cos 1.0)
(newline)
(fixed-point (lambda (y) (+ (sin y) (cos y))) 
             1.0)
(newline)

; f(x): (0, 1) +∞ - -∞; (1, +∞) (+∞, 0)
; recursion can not continue, out of range(get negative result)
; (fixed-point (lambda (x) (/ (log 1000) (log x)))
;              tolerance)
; (newline)
; new reasonal inital num for recursion, f(x) < 1000
(fixed-point (lambda (x) (/ (log 1000.0) (log x)))
             (+ 2 tolerance))
(newline)
