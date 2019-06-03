#lang sicp

(define last-guess 1.0)

(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? old-guess new-guess)
  (> 0.000001
    (/ (abs (- new-guess old-guess))
       old-guess)))

(define (sqrt-iter guess x)
  (define new-guess (improve guess x))
  (if (good-enough? guess new-guess)
    new-guess
    (sqrt-iter (improve guess x)
      x)))

(define (sqrt x)
  (sqrt-iter last-guess x))

(sqrt 0.00000009)

