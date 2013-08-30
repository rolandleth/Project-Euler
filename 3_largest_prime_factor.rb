# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

half = (Math.sqrt(600851475143) + 1).to_i

class Integer < Numeric
  def is_prime?
    return false if self <= 1
    2.upto(Math.sqrt(self).to_i) do |x|
      return false if self % x == 0
    end
    true
  end
end

largest_prime_factor = 1
(1...half).each do |x|
  largest_prime_factor = x if 600851475143 % x == 0 and x.is_prime?
end
puts largest_prime_factor