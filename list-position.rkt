(define list-position
  (lambda (o l)
    (let loop ((i 0) (l l))
      (if (null? l) #f
         (if (eqv? (car l) o) i
             (loop (+ i 1) (cdr l)))))))

(begin
  (display (list-position 4 '(1 1 2 3))))