;; (classify x) classifies an int, x, as one of 'zero, 'one, 'odd, or 'even'
;; Example:
(check-expect (classify -5) 'odd)

;; classify: Int -> Sym
(define (classify x)
  (cond [(= x 0)            'zero]
        [(= x 1)             'one]
        [(= (modulo x 2) 0) 'even]
        [(= (modulo x 2) 1)  'odd]))

;; Tests:
(check-expect (classify 0) 'zero)
(check-expect (classify 1) 'one)
(check-expect (classify 44) 'even)
