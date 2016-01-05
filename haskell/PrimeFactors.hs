module PrimeFactors (primeFactors) where

primeFactors :: Integer -> [Integer]

primeFactors x = primeFactors x 2
    where
        primeFactors x candidate
            | x == 1 = []
            | x `mod` candidate == 0 = [candidate] ++ primeFactors (x `div` candidate) candidate
            | otherwise = primeFactors x (candidate + 1)
