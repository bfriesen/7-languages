defmodule PF.PrimeFactors do
  def prime_factors(num, candidate \\ 2) do
    case num do
        1 -> []
        x when rem(x, candidate) == 0 -> [candidate|prime_factors(div(x, candidate))]
        x -> prime_factors(x, candidate + 1)
    end
  end
end
