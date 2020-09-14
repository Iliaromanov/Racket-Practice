;; (sum-range a b) produces the sum of numbers a to b inclusive
;; Examples:
(check-expect (sum-range 2 4) 9)
(check-expect (sum-range 1 3) 6)

;; sum-range: Nat -> Nat
(define (sum-range a b)(- (sum-to-n b)(sum-to-n (- a 1))))

;; Tests:
(check-expect (sum-range 3 5) 12)

;; (sum-to-n n) produces the sum of the first n natural numbers
;; Examples:
(check-expect (sum-to-n 4) 10)
(check-expect (sum-to-n 3) 6)

;; sum-to-n: Nat -> Nat
(define (sum-to-n n)(/ (* n (+ n 1)) 2))

;; Tests:
(check-expect (sum-to-n 0) 0)
(check-expect (sum-to-n 5) 15)
