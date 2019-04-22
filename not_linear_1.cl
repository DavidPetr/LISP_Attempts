(defun sumOfNums (L)
  (if (null L)
      0
    (if (atom (car L))
        (if (numberp (car L))
           (+ (car L) (sumOfNums (cdr L)))
           (sumOfNums (cdr L))          
         )
         (+ (sumOfNums (car L)) (sumOfNums (cdr L)))
      )
    )
  )


(defun maxElem (L)
  (if (null L)
      -1
    (if (atom (car L))
        (if (numberp (car L))
            (max (car L) (maxElem (cdr L)))
            (maxElem (cdr L))
          )
         ( max (maxElem (car L)) (maxElem (cdr L)))
     )
   )
  )

(defun listNums (L)
  (if (null L)
      0
    (if (atom (car L))
        (listNums (cdr L))
        (+ 1 (listNums (car L))(listNums (cdr L)))
    )
   )
  )
(defun removeElems (L) ;Remains only nils
  (if (null L)
      nil
      (if (atom (car l))
          (if (null (car L))
              (cons () (removeElems (cdr L)))
              (removeElems (cdr L))
            )
        (cons (removeElems (car L))(removeElems (cdr L)))
      ) 
  )
  )



(defun replaceDepths_h (L d)
  (if (null L)
      nil
      (if (atom (car L))
        (cons (+ 1 d) (replaceDepths_h (cdr L) d))
        (cons (replaceDepths_h (car L) (+ 1 d))(replaceDepths_h (cdr L) d))  
       )  
   )
)
(defun replaceDepths (L)
  (replaceDepths_h L 0)
 )


