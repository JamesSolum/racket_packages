#lang plai-typed

#|
Basic math functions

TODO:
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
;; avg : lon -> number 
;; calculates the average of a list of numbers
(define (avg lon)
  (/ (foldr + 0 lon) (length lon)))


;##### Advanced Add #####
(define (add-helper lon)
  (foldl + 0 lon))

(define-syntax add
  (syntax-rules ()
    ((_ a ...)
     (add-helper (list a ...)))))

;##### Advanced Subtract #####
(define (sub-helper lon)
  (foldl - 0 lon))

(define-syntax sub
  (syntax-rules ()
    ((_ a ...)
     (sub-helper (list a ...)))))

;##### Advanced Divide #####
(define (div-helper lon)
  (foldr / 1 lon))

(define-syntax div
  (syntax-rules ()
    ((_ a ...)
     (div-helper (list a ...)))))

;##### Advanced Multiply #####
(define (mult-helper lon)
  (foldl * 1 lon))

(define-syntax mult
  (syntax-rules ()
    ((_ a ...)
     (mult-helper (list a ...)))))



