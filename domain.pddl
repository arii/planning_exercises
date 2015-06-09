;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; HW7 blocks world + painting (stub)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain hw7)
  (:requirements :strips)

  (:constants red green yellow blue)

  (:predicates 
    (clear ?x)
    (on-table ?x)
    (arm-empty)
    (holding ?x)
    (on ?x ?y)

    ;; new objs
    (paint-sprayer ?x)
    (paint-can ?x)
    (brush ?x)
    (bucket ?x)
    (color ?c)
    (holds-color ?x ?c)
    (surface-color ?x ?c)
    (clean-brush ?x)
    )

  (:action spray 
   :parameters (?obj ?spray-bottle ?color)
   :precondition (and
                    (clear ?obj)
                    (on-table ?obj)
                    (paint-sprayer ?spray-bottle)
                    (holding ?spray-bottle)
                    (holds-color ?spray-bottle ?color)
                    (color ?color)
                     )
   :effect (and  (surface-color ?obj ?color) ))
  
  (:action brush ...)
  (:action load-paint ...)
  (:action clean-brush ...)
  
  (:action pick-up 
    :parameters (?obj)
    :precondition (and  (clear ?obj)
                        (arm-empty) 
                        (on-table ?obj))
    :effect (and    (holding ?obj)
                    (not (on-table ?obj))
                    (not (arm-empty)) ) )
  (:action put-down
   :parameters (?obj)
   :precondition (holding ?obj)
   :effect (and (not (holding ?obj))
                (on-table ?obj) 
                (arm-empty) ) )

  
  (:action stack 
   :parameters (?obj ?underobj)
   :precondition (and   (clear ?underobj) 
                        (holding ?obj))
   :effect (and (not (holding ?obj)) 
                (not (clear ?underobj) )
                (on ?obj ?underobj)
                (arm-empty) ) )

  (:action unstack 
   :parameters (?obj, ?underobj)
   :precondition (and   (on ?obj ?underobj) 
                        (arm-empty) 
                        (clear ?obj))
   :effect (and (holding ?obj) 
                (not (arm-empty)) 
                (clear ?underobj)
                (not (on ?obj ?underobj)) ) )
            
    )
