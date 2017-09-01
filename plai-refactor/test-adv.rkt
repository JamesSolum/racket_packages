#lang plai-typed

#|
New testing platform for plai-typed
|#

;; test : X X -> bool
;; checks if what is provided returns the expected 
(define (myTest x y)
  (if (not (equal? x y)) 
    (error 'read "input is not an s-expression: ~e" x)
    "Success"
    ))

(test (myTest (+ 1 2) 2) "input is not an s-expression")

