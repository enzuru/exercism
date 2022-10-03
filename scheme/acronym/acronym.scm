(import (rnrs) (ice-9 string-fun))

(define (nth n l)
  (if (or (> n (length l)) (< n 0))
      (error "nth" "out of bounds")
      (if (eq? n 0)
          (car l)
          (nth (- n 1) (cdr l)))))

(define (first-letter word)
  (if (equal? (string-length word) 0)
      #nil
      (nth 0 (string->list word))))

(define (remove-unwanted-characters str)
  (string-replace-substring (string-replace-substring str "_" "") "-" " "))

(define (sanitize-string str)
  (string-upcase (remove-unwanted-characters str)))

(define (not-null value)
  (not (null? value)))

(define (acronym test)
  (list->string (filter not-null (map first-letter (string-split (sanitize-string test) #\space)))))
