#lang plai-typed

#|
Basic math functions

TODO:
figure out a better add function
Write the Average function
Figure out how we include this package in our racket files
|#

;##### NEGATE #####
;; negate : number -> number
;; negates a number
(define (negate x)
	(* -1 x))

;#### NEGATIVE?/POSITVE? #####
;; pos? : number -> bool
;; checks if a number is positive
(define (pos? x)
	(if (> x 0)
		true
		false))

;; neg? : number -> bool
;; checks if a number is negative
(define (neg? x)
	(not (pos? x)))

;##### EXPONENT #####
; HELPER
;; posExp : number number -> number
;; raises x to the e power
(define (posExp x e)
  (cond [(= e 0) 1]
	[else (* x (posExp x (sub1 e)))]
	))

;; negExp : number number -> number
;; raises x to the negative e power
(define (negExp x e)
	(/ 1 (posExp x (negate e))))

;; exp : number number -> number
;; combines pos and neg exp
(define (exp x e)
	(if (pos? e)
		(posExp x e)
		(negExp x e)))

;##### ABSOLUTE VALUE #####
;; abs : number -> number
;; takes any number and returns the absolute 
;; value of that number
(define (abs x)
	(if (< x 0)
		(negate x)
		x))

;##### AVERAGE #####
;; average : lon -> number 


