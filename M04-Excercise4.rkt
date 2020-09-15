;; a function that consumes a Num, x, and produces:
;; 1 if 80 < x <= 100, -1 if 0 < x < 80, and 0 otherwise

;; Examples:
(check-expect (func 50) -1)
(check-expect (func -50) 0)
(check-expect (func 85) 1)

;; func: Num -> Int
(define (func x)
  (cond [(and (<= x 100)(> x 80)) 1]
        [(and (< x 80)(> x 0))   -1]
        [else                     0]))

;; Tests:
(check-expect (func 100) 1)
(check-expect (func 80) 0)
