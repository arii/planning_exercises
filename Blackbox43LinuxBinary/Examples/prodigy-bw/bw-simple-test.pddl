(define (problem bw-simple)
    (:domain prodigy-bw)
  (:objects 1 2 3)
  (:init (clear 1) (arm-empty) (on 1  2) (on-table 2))
  (:goal (and (on-table 1) (clear 2))))
