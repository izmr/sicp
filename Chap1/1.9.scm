(define (plus a b)
  (if (= a 0)
    b
    (+ 1 (plus (- a 1) b))))
(print (plus 4 5))
;; (plus 4 5)
;; (+ 1 (plus 3 5))
;; (+ 1 (+ 1 (plus 2 5)))
;; (+ 1 (+ 1 (+ 1 (plus 1 5))))
;; (+ 1 (+ 1 (+ 1 (+ 1 (plus 0 5)))))
;; (+ 1 (+ 1 (+ 1 (+ 1 5))))
;; (+ 1 (+ 1 (+ 1 6)))
;; (+ 1 (+ 1 7))
;; (+ 1 8)
;; 9

(define (plus a b)
  (if (= a 0)
    b
    (plus (- a 1) (+ b 1))))
(print (plus 4 5))
;; (plus 4 5)
;; (plus 3 6)
;; (plus 2 7)
;; (plus 1 8)
;; (plus 0 9)
;; 9
