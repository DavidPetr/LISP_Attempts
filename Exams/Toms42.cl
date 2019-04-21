(defun f1(n)
  (if(<= n 1)
      0
      (+ 1 (f1(/ n 2)))
      )
  
  )

(defun firstDigit(n)
  (if (< n 10)
      n
    (firstDigit(floor n 10))
      )
  
  )
 
(defun g1(L)
  (if(null L)
      nil
    (if (= (firstDigit(car L)) 5)
        (cons (car L)(cons(car L)(g1 (cdr L))))  
        (cons (car L)(g1 (cdr L)))
     )    
   )
)