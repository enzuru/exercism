(import (rnrs))

(define (score-letter letter)
  (cond ((member letter '(#\A #\E #\I #\O #\U #\L #\N #\R #\S #\T)) 1)
        ((member letter '(#\D #\G)) 2)
        ((member letter '(#\B #\C #\M #\P)) 3)
        ((member letter '(#\F #\H #\V #\W #\Y)) 4)
        ((member letter '(#\K)) 5)
        ((member letter '(#\J #\X)) 8)
        ((member letter '(#\Q #\Z)) 10)))

(define (score word)
  (apply + (map score-letter (string->list (string-upcase word)))))
