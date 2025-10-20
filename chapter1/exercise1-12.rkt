#lang sicp

(define (pascal a b)
    (cond   ((= b 1) 1)
            ((= a b) 1)
            (else   (+  (pascal (- a 1) (- b 1)) 
                        (pascal (- a 1) b)
                    )
            )
    )
)

(pascal 1 1)
(pascal 2 1)
(pascal 3 2)
(pascal 4 3)
(pascal 5 2)
(pascal 5 3)
