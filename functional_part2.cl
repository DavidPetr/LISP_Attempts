;Exercise 1

(defun G (n h)
  #'(lambda (L)
      (if (null L)
          nil
        (if (null (cdr L))
            (+ (funcall h (car L)) n)
            (+ (funcall h (car L)) (funcall (G n h)(cdr L)))        
         ) 
      )
     )
  )

(defun f1 (L)
  (funcall (G 0 #'(lambda (x)
                    (if (numberp x)
                        x
                        0
                      )
                    )
            )L
    )
  )

(defun f2 (L) 
  (funcall (G 0 #'(lambda (x)
                    (if (= (rem x 2) 0)
                        0
                        x
                      )
                    )
            )L
    )
  )


(defun num_count(x) 
  (if (< x 10) 
      1
      (+ 1 (num_count (floor x 10))) 
    )
  )
(defun f3 (L)
  (funcall (G 0 'num_count) L )
  )







; Exercise 4
(defun P (g h a)
  #'(lambda (L)
      (if (null L)
          nil
          (if (< (car L) a)
               (cons (funcall h (car L) a)(funcall (P g h a)(cdr L)))  
               (cons (funcall g (car L) a)(funcall (P g h a)(cdr L)))
           )
       )
     )
  )

(defun f4_2 (L)
  (funcall (P #'(lambda (x y) (+ x 1)) #'(lambda (x y) (- x 1)) 0) L)
 )