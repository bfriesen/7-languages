(ns prime-factors.core)

(defn primes
  ([num]
    (primes num 2))
  ([num candidate]
    (cond
      (= num 1) []
      (= (rem num candidate) 0) (cons candidate (primes (/ num candidate) candidate))
      :else (primes num (+ candidate 1)))))