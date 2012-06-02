(print 10) ; => 10

(print (+ 5 3 4)) ; => 12

(print (- 9 1)) ; => 8

(print (/ 6 2)) ; => 3

(print (+ (* 2 4) (- 4 6))) ; => 6

(print (define a 3)) ; => a

(print (define b (+ a 1))) ; => b

(print (+ a b (* a b))) ; => (+ 3 4 (* 3 4)) => 19

(print (= a b)) ; => #f

(print (if 
  (and (> b a) (< b (* a b))) ; => #t
    b
    a)) ; => b -> 4

(print (cond 
  ((= a 4) 6)
  ((= b 4) (+ 6 7 a)) ; => 16
  (else 25)))

(print (+ 2 (if (> b a) b a))) ; => (+ 2 b) => 6

(print (* 
  (cond 
    ((> a b) a)
    ((< a b) b) ; => b
    (else -1))
  (+ a 1))) ; => (* b 4) => 16
