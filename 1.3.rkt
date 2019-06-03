#lang sicp

(define (sum-of-larger-in-three-nums a b c)
  (if (> a b)
    (if (> b c)
      (+ a b)
      (+ a c))
    (if (> a c)
      (+ a b)
      (+ c b))))

(sum-of-larger-in-three-nums 3 1 2)