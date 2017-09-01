#lang plai-typed

#|
Basic math functions

TODO:
figure out a better add function
abs needs tests

|#

;; exp : number number -> number
;; raises x to the e power
(define (exp x e)
  (cond [(= e 0) 1]
	[else (* x (exp x (sub1 e)))]
	))

;; abs : number -> number
;; takes any number and returns the absolute 
;; value of that number
(define (abs x)
	(if (< x 0)
		(* x -1)
		x))

;; average : lon -> number 




