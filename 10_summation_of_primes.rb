# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

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

sum = 0
1.step(2_000_000, 2) do |x|
  sum += x if x.is_prime?
end
puts sum