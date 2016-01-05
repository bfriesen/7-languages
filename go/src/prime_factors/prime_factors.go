package prime_factors

func Factors(num int) []int {
    return factors(num, 2)
}

func factors(num int, candidate int) []int {
    switch {
        case num == 1: return []int{}
        case num % candidate == 0: return append([]int{candidate}, factors(num / candidate, candidate)...)
        default: return factors(num, candidate + 1)
    }
}