;; There is only one block, A, which is on the table.  A can with
;; red paint is on the table.  There is a clean brush on the
;; table.  Our goal is to have A be red and the arm empty.

(define (problem 1)
  (:domain hw7)
  (:objects BlockA RedPaintCan PaintBrush)
  (:init (arm-empty)
        (paint-can RedPaintCan)
        (holds-color RedPaintCan red)
        (color red)
        (brush PaintBrush)
        (clean-brush PaintBrush)
        (clear BlockA)
        (clear RedPaintCan)
        (clear PaintBrush)
        (on-table BlockA)
        (on-table RedPaintCan)
        (on-table PaintBrush) )
    ;... block A on the table with nothing on it ...
    ;... a red paint can on the table with nothing on it ...
    ;... a clean brush is on the table with nothing on it ...
	
  (:goal (and (arm-empty)
            (surface-color BlockA red)
              ;... A is red ...
          )))



