(defun sum (x y)
  (if (= x 0)
      y
  (if (= (rem x 2) 0)   
      (sum (- x 1) (+ y x))
      (sum (- x 1) y)
  )
 )
)