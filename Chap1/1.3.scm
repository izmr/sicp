(define (square x) (* x x))
(define (sum-squares-of-large-two-nums a b c)
  (if (and (<= a b) (<= a c)) ; もしaが最小の値だったら
    (+ (square b) (square c)); bとcの2乗の和を返す
    (sum-squares-of-large-two-nums b c a))); または順番を入れ替える

(print (sum-squares-of-large-two-nums 1 2 3))  ; => 4 + 9 = 13
(print (sum-squares-of-large-two-nums 10 1 5)) ; => 100 + 25 = 125
(print (sum-squares-of-large-two-nums 4 4 2))  ; => 16 + 16 = 32
(print (sum-squares-of-large-two-nums 4 2 2))  ; => 16 + 4 = 20
(print (sum-squares-of-large-two-nums 3 3 3))  ; => 9 + 9 = 18
