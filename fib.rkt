#lang racket

(define (fib i)
    (let loop ([i i])
      (cond
        [(eqv? i 1) 0]
        [(eqv? i 2) 1]
        [else (+ (loop (- i 1)) (loop (- i 2)))])))

(begin
  (display (fib 5))
  (newline))

(define fib-list
  (lambda (i)
    (let ([l (list)])
      (let loop ([i i])
        (cond
          [(eqv? i 1) (set! l (list 0))]
          [(eqv? i 2) (set! l (list 0 1))]
          [else (set! l(append
                 (loop (- i 1))
                 (list (fib i))))])
        l))))
        
(define l (fib-list 4))

(begin
  (display l)
  (newline)
  (display (list? l)))

