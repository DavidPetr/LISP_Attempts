(defun fact (x) 
  (if (= x 0)
      1
    (* x (fact(- x 1)))
      )
  )
(defun f (x y)
  (if (= y 0)
  1
  (+ (fact(* x y)) (f x (- y 1)))
    )
  )

(defun f2 (L)
  (if(null L)
      nil
    (if(= (rem(car L) 5) 0)
        (cons (car L) (f2 (cdr L)))
        (f2 (cdr L))      
       )
    )
  )

(defun g1 (x)
  (if (< x 10)
     (* x 10) 
    (+ (* 100 (g1 (floor x 10))) (* 10 (rem x 10)))
    )
  )
(defun g4 (A B)
  (if null A)
  nil
  (if (> (car A) (car B))
         (cons (* (car A) (car A)) (g4 (cdr A)(cdr B)))
         (cons (+ 3 (car B)) (g4 (cdr A)(cdr B)))

         )
  
  )