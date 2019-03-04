(defun list_len (L)
  (if (null L)
    0
    (+ 1 (list_len (cdr L) ))
    )
  )

(defun list_sum (L)
  (if (null L)
    0
    (+ (car L) (list_sum (cdr L) ))
    )
  )
(defun remove_num (L)
  (if (null L)
      L
    (if (numberp (car L))
        (remove_num (cdr L))
        (cons (car L) (remove_num (cdr L)) )
     ) 
  
    )
  )
(defun add_atom (x L)
  (if (null L)
      (cons x L)
    (cons (car L) (add_atom x (cdr L)))
  
    )
  )