#lang sicp

(define (p) (p))
(define (test x y)
    (if (= x 0) 0 y))

test(0, (p))

; 正则序求值 (p) 没有机会求值，test(0, (p)) 会直接返回 0
; 应用序求值 (p) 作为参数传递给 test 时会被求值，而 (p) 无限循环，所以会报错