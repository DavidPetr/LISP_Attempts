(defun sum_sqrt (x)
  (if (= x 0)
    0
    (+ (sqrt x) (sum_sqrt (- x 1)))
      
   )
)

(defun mul_e^i (x)
  (if (= x 0)
    1
    (* (exp x) (mul_e^i (- x 1)))
      
   )
)