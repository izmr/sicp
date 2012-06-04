(define (cubic x)
  (define (cubic-iter old new)
    (if (good-enough? old new)
      new
      (cubic-iter new (improve new))))
  (define (improve guess)
    (/
      (+
        (/ x (* guess guess))
        (* 2 guess))
      3))
  (define (good-enough? old new)
    (< (abs (- 1.0 (/ old new))) 0.001))
  (cubic-iter 1.0 x))

(print (cubic 8.0)) ; 2.0000...
(print (cubic 27.0)) ; 3.0000...
(print (cubic 5.0)) ; 1.709975...
