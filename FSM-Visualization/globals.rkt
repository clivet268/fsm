#lang racket
#|
Created by Joshua Schappel on 12/19/19
   This file contains global variables for the visualization tool and its components
|#

(require 2htdp/image)
(provide (all-defined-out))

;; -- VERSION --
(define VERSION "BETA 1.1")


;; -- DIMENTIONS --
(define WIDTH 1200) ;; The width of the scene
(define HEIGHT 600) ;; The height of the scene
(define CONTROL-BOX-H (/ HEIGHT 5)) ;; The height of each left side conrol box
(define BOTTOM(/ HEIGHT 8))
(define STACK-WIDTH 100) ;; the width of the control stack image for pdas


;; -- GUI COLORS --
(define START-STATE-COLOR (make-color 6 142 60)) ;; Color of circle that surrounds start state
(define END-STATE-COLOR (make-color 219 9 9)) ;; Color of circle that surrounds an end state
(define MSG-ERROR (make-color 255 0 0)) ;; Color of an error message
(define MSG-SUCCESS (make-color 65 122 67)) ;; Color if a success message
(define MSG-CAUTION (make-color 252 156 10)) ;; Color of a caution message


;; -- OTHER --
(define TRUE-FUNCTION (lambda (v) '())) ;; The default function for a state variable
(define MACHINE-TYPE null) ;; The type of machine (pda, ndfa, ..)
(define STACK-LIST '(a a a b a)) ;; The stack list for a pda
(define STACK-NUM 0) ;; The number of new items that arrived on the stack

;; -- MUTATORS --
(define CURRENT-RULE '(null null null)) ;; The current rule that the machine is following
(define CURRENT-STATE null) ;; The current state that the machine is in

;; -- Scrollbars --
(define TAPE-INDEX-BOTTOM -1) ;; The current tape input that is being used
(define INIT-INDEX-BOTTOM 0) ;; The initail index of the scrollbar


;; -- INPUTS --
(define INPUT-COLOR (make-color 186 190 191)) ;; The color of an input field


;; -- BUTTONS --
(define CONTROLLER-BUTTON-COLOR (make-color 33 93 222)) ;; Color of button and center dot


;; -- INPUT FACTORY --
(define DFA-NDFA_NUMBER 8) ;; The number of dfa's/ndfa's to render on the screen
(define PDA_NUMBER 4) ;; The number if pda's to render on screen


;; -- SETTERS --
(define (set-tape-index-bottom value)
  (set! TAPE-INDEX-BOTTOM value))

(define (set-init-index-bottom value)
  (set! INIT-INDEX-BOTTOM value))

(define (set-machine-type type)
  (set! MACHINE-TYPE type))