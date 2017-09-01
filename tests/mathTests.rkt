#lang plai-typed

(require "../math.rkt")

#| 
Tests for my library
|#

;; exp : raises a to the b power
(test (exp 2 2) 4)
(test (exp 4223 0) 1)
(test (exp 3 4) 81)
