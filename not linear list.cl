(defun atom_count (L)
  (if (null L)
      0
    (if(atom (car L))
        (+ 1 (atom_count(cdr L)))
        (+ (atom_count(car L))(atom_count(cdr L)))
        )
      
      )
  
  )
(defun is_in_list (L k)
  (if (null L)
      nil
    (if(atom (car L))
        (if (equalp k (car L))
            T
            (is_in_list (cdr L) k)
            )
      (if (is_in_list (car L) k)
          T
          (is_in_list (cdr L) k))
      )
      )
    
  )

(defun merge_list (L1 L2)
  (if(null L1)
      L2
    (cons (car L1)(merge_list (cdr L1) L2))
    )  
 )
  
(defun to_linear (L)
  (if (null L)
      nil
    (if(atom (car L))
       (cons (car L) (to_linear(cdr L)))
      (merge_list (to_linear(car L))(to_linear(cdr L)))
      )
  )
 )