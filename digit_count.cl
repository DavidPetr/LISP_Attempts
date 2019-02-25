(defun digit_count (n)
  (if (< n 1)
    0
    (+ 1 (digit_count (/ n 10)))
   )
  )

(defun sum_of_digit (n)
  (if (< n 1)
    0
    (+ (rem n 10) (sum_of_digit (/ (- n (rem n 10)) 10)))
   )
  )

(defun mul_of_digit (n)
  (if (< n 1)
    1
    (* (rem n 10) (sum_of_digit (/ (- n (rem n 10)) 10)))
   )
  )

(defun common_divisor_sum (x y i)
  (if (or (< x i) (< y i))
      0    
    (if (= (rem x i) 0)
      (if (= (rem y i) 0)
        (+ i (common_divisor_sum x y (+ i 1))) 
        (common_divisor_sum x y (+ i 1))
      )
      (common_divisor_sum x y (+ i 1))
    )
  )
)