; call h(g(x))
(defun f1 (h g x)
  (funcall h(funcall g x))
  
  )

; if p predicate true for x, call h function to x y, 
; else call g function to x y
(defun f2 (p h g)
  #'(lambda (x y)
       (if (funcall p x)
          (funcall h x y)
          (funcall g x y) 
         )
       )
  )

; call f function for list elements
(defun P (f)
  #' (lambda (L)
       (if (null L)
            ()
            (cons (funcall f(car L)) (funcall (P f) (cdr L)) ) 
        )       
      )
  )

; if f predicat is true for list elements returns true
; else nil
(defun P1 (f)
  #' (lambda (L)
       (if (null L)
            t
         (if (funcall f (car L))
             (funcall (P1 f) (cdr L))
           nil
           )         
        )       
      )  
  )

; if f predicat is false for list element, erase that element
(defun P2 (f)
  #' (lambda (L)
       (if (null L)
            nil
         (if (funcall f (car L))
              (cons (car L)(funcall (P2 f) (cdr L)))
              (funcall (P2 f) (cdr L))    
           )         
        )       
      )  
  )