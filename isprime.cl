(defun isprime_h (p i)
  (if(>= i p)
    t
    (if (= (rem p i) 0)
      nil 
      (isprime_h p (+ i 1))
    ) 
  )  
)

(defun isprime (p)
  (if(< p 2)
    nil
    (isprime_h p 2)
   )
)

(defun sum_prime (n)
  (if (< n 2)
    0
    (if (isprime n)
      (+ n (sum_prime (- n 1)))  
      (sum_prime (- n 1))
     )
  )  
 )
 