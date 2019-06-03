#lang sicp

(define (f n)
  (if (< n 3)
    n
    (+ (f (- n 1))
        (* 2
          (f (- n 2)))
        (* 3
          (f (- n 3))))))

(define (f2 n)
  (if (< n 3)
    n
    (f2-iter 0 1 2 n)))
(define (f2-iter a b c n)
  (define d
    (+
      (* 3 a)
      (* 2 b)
      c))
  (if (= n 3)
    d
    (f2-iter b c d (- n 1))))

(f 30)
(f2 40)