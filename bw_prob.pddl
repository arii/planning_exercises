(define (problem bw)
    (:domain hw7)
    (:objects A1 B1)
    (:init 
        (arm-empty) 
        (on-table A1)
        (clear A1) 
        (on-table B1)
        (clear B1))
    (:goal (and (arm-empty) 
                (on A1 B1) ) )
    )

