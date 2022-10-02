(import (rnrs))

(define (leap-year? year)
  (if (equal? (mod year 4) 0)
      (if (equal? (mod year 100) 0)
          (if (equal? (mod year 400) 0)
              #T
              #F)
          #T)
      #F))
