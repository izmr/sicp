(define (A x y)
  (cond ((= y 0) 0)
    ((= x 0) (* 2 y))
    ((= y 1) 2)
    (else (A
      (- x 1)
      (A x (- y 1))))))

(print (A 1 10))
(print (A 2 4))
(print (A 3 3))
