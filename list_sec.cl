(defun list_union(L1 L2)
  (if(null L1)
      L2
    (cons (car L1)(list_union (cdr L1) L2))
    )
  )

(defun add_atom (x L)
  (if (null L)
      (cons x L)
    (cons (car L) (add_atom x (cdr L)))
  
    )
  )

(defun reverse_list(L)
  (if(null L)
      L
    (add_atom (car L)(reverse_list(cdr L)))
      )
  )
(defun list_inc(L)
  (if(null L)
      L
    (if(numberp (car L))
        (cons (+ 1 (car L))(list_inc (cdr L)))
      (cons (car L)(list_inc (cdr L)))
        )
    )
  
  )
(defun max_elem(L)
  (if(null L)
      L
    (if(null (cdr L))
        (car L)
    (max (car L) (max_elem(cdr L)))
      )
    )
  )
(defun existInList(L y)
  (if (null L)
      nil
    (if (equal y (car L))
        t
      (existInList (cdr L) y )
        )
    )
  )
(defun howManyIsInList(L y)
  (if (null L)
      0
    (if (equal y (car L))
        (+ 1 (howManyIsInList (cdr L) y))
      (howManyIsInList (cdr L) y)
        )
    )
  )
(defun list_without(L)
  (if(null L)
      nil
    (if(existInList (cdr L) (car L))
        (list_without(cdr L))
      (cons (car L)(list_without (cdr L)))      
      )
   )
  )