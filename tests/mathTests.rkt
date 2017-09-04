#lang plai-typed

(require "../math/math.rkt")

#| 
Tests for my library
|#

;; pos? : checks if a number is positive
(test (pos? 5) #t)
(test (pos? -5) #f)

;; neg? :  checks if a number is positive
(test (neg? 5) #f)
(test (neg? -5) #t)

;; exp : raises a to the b power
(test (exp 2 2) 4)
(test (exp 4223 0) 1)
(test (exp 3 4) 81)
(test (exp 2 -2) .25)

;; abs : returns the absolute value of any given number 
(test (abs 90) 90)
(test (abs -2) 2)
(test (abs 0) 0)

;; negate : negates a number
(test (negate -5) 5)
(test (negate 4) -4)
(test (negate 0) 0)

;; average : calculates the average of a list of numbers
(test (avg (list 1 2 3 4 5)) 3)
