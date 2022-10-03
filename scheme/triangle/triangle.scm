(import (rnrs))

(define (is-triangle a b c)
  (if (and (> a 0)
           (> b 0)
           (> c 0)
           (< a (+ b c))
           (< b (+ a c))
           (< c (+ a b)))
      #t
      #f))

(define (triangle a b c)
  (if (is-triangle a b c)
      (cond ((equal? a b c) 'equilateral)
            ((or (equal? a b) (equal? a c) (equal? b c)) 'isosceles)
            (#t 'scalene))
      (error "Invalid" 0)))
