(defun fact_!!(y)
  (if(< y 2)
      1
     (* y (fact_!!(- y 2)))
      )
  )
(defun sum(x)
  (if(= x 0)
      0
    (+ (* x x x) (sum (- x 1)))
      )
  )
(defun helper(x y)
  (/ (sum x) (fact_!! y))
  )


(defun g1 (L)
  (if(null L)
      nil
    (if(> (car L) 10)
      (g1(cdr L))
      (cons (* 2 (car L))(g1 (cdr L)))
      )
   )
  
  )