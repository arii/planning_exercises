;; There is only one block, A, which is on the table.  A sprayer with
;; red paint is on the table.  Our goal is to have A be red and the
;; arm empty.

(define (problem 0)
  (:domain hw7)
  (:objects BlockA RedSprayer)
  (:init    (arm-empty)
            (clear BlockA)
            (clear RedSprayer)
            (on-table BlockA)
            (on-table RedSprayer)
            (color red)
            (paint-sprayer RedSprayer)
            (holds-color RedSprayer red)
            )
         ;... there is a block A on the table with nothing on it...
         ;... there is a red sprayer on the table with nothing on it...
  
  (:goal (and (arm-empty)
              (surface-color BlockA red)
              )
              )
)
             ; ...A is red...
        


