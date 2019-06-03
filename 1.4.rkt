#lang sicp

(define (a-plus-abs-b a b)
    ((if (> b 0) + -) a b)

; 定义一个叫做 a-plus-abs-b 的过程
; 该过程接受两个参数 a 和 b
; 如果 b > 0 计算 a + b
; 否则计算 a - b
; 一言以蔽之：计算 a 与 b 的绝对值的和