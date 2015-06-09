;; Block A is on the table, B is on A and C on B.  Cans of red, green
;; and blue paint are on the table along with three clean brushes.
;; There is no water bucket.  The goal is to make A red, B green and C
;; blue and to have A on B, B on C and C on the table and the arm
;; empty.

(define (problem 6)
  (:domain hw7)
  (:objects A B C sprayer can1 can2 brush)
  (:init (arm-empty) ... )
  (:goal (and (arm-empty) ...)))
