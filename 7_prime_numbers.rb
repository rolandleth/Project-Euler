# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?

primes = [2, 3]

class Integer < Numeric
  def is_prime?
    return true if self == 2 or self == 3
    return false if self <= 1 or self.even?
    return false unless (self - 1) % 6 == 0 or (self + 1) % 6 == 0
    3.step(Math.sqrt(self).to_i, 2) do |x|
      return false if self % x == 0
    end
    true
  end
end

while primes.count < 10_001 do
  checked_number = primes.last
  is_prime = false
  until is_prime
    checked_number += 1
    if checked_number.is_prime?
      primes << checked_number
      is_prime = true
    end
  end
end
puts primes.last
