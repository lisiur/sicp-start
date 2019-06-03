#lang sicp

(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.0000000000000001))

(define (newif predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x)
      x)))

(define (sqrt-iter-newif guess x)
  (newif (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x)
      x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (sqrt-newif x)
  (sqrt-iter 1.0 x))

(sqrt 2)
(sqrt-newif 2)

