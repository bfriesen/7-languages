package com.crebma.primeFactors

object PrimeFactors {

  /**def factors(num: Int) : List[Int] = {
    var number = num
    var primes = List[Int]()
    var candidate = 2
    
    while (number > 1) {
        while (number % candidate == 0) {
            primes = primes :+ candidate
            number = number / candidate
        }
        
        candidate = candidate + 1
    }
    
    primes
  }*/
  
  def factors(num: Int, candidate: Int = 2) : List[Int] = num match  {
    case 1 => List[Int]()
    case x if x % candidate == 0 => candidate :: factors(x / candidate, candidate)
    case x => factors(x, candidate + 1)
  }
}
