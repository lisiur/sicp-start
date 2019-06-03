#lang sicp

(define last-guess 1.0)

(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (/
    (+
      (/ x (square guess))
      (* 2 guess))
    3))

(define (good-enough? old-guess new-guess)
  (> 0.000001
    (/ (abs (- new-guess old-guess))
       old-guess)))

(define (cube-root-iter guess x)
  (define new-guess (improve guess x))
  (if (good-enough? guess new-guess)
    new-guess
    (cube-root-iter (improve guess x)
      x)))

(define (cube-root x)
  (cube-root-iter last-guess x))

(cube-root 0.00000009)

