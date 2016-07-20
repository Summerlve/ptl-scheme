(map - '(10 9 8) '(3 2 1))

(define println
  (lambda (x)
    (begin
      (display x)
      (newline))))

(for-each println
          '(1 2 3))

(map cons '(1 2 3) '(1 2 3))