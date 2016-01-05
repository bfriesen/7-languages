def prime_factors(num)
  primes = []
  candidate = 2
  
  while num > 1
    
    while num % candidate == 0
      primes << candidate
      num = num / candidate
    end
    
    candidate = candidate + 1
  end
  
  primes
end

RSpec.describe "Prime Factors" do

  it "has factors of [] for 1" do
    expect(prime_factors(1)).to eq []
  end

  it "has factors of [2] for 2" do
    expect(prime_factors(2)).to eq [2]
  end

  it "has factors of [3] for 3" do
    expect(prime_factors(3)).to eq [3]
  end

  it "has factors of [2, 2] for 4" do
    expect(prime_factors(4)).to eq [2, 2]
  end

  it "has factors of [5] for 5" do
    expect(prime_factors(5)).to eq [5]
  end

  it "has factors of [2, 3] for 6" do
    expect(prime_factors(6)).to eq [2, 3]
  end

  it "has factors of [7] for 7" do
    expect(prime_factors(7)).to eq [7]
  end

  it "has factors of [2, 2, 2] for 8" do
    expect(prime_factors(8)).to eq [2, 2, 2]
  end

  it "has factors of [3, 3] for 9" do
    expect(prime_factors(9)).to eq [3, 3]
  end

  it "has factors of [2, 5] for 10" do
    expect(prime_factors(10)).to eq [2, 5]
  end

  it "has factors of [11] for 10" do
    expect(prime_factors(11)).to eq [11]
  end

  it "has factors of [2, 2, 3] for 12" do
    expect(prime_factors(12)).to eq [2, 2, 3]
  end

end
