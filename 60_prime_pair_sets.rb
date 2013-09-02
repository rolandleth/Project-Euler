# The primes 3, 7, 109, and 673, are quite remarkable.
# By taking any two primes and concatenating them in any order the result will always be prime.
# For example, taking 7 and 109, both 7109 and 1097 are prime.
# The sum of these four primes, 792, represents the lowest sum for a set of four primes with this property.
# Find the lowest sum for a set of five primes for which any two primes concatenate to produce another prime.

class Integer < Numeric
  def is_prime?
    return false if self <= 1 or self.even?
    return false unless (self - 1) % 6 == 0 or (self + 1) % 6 == 0
    3.step(Math.sqrt(self).to_i, 2) do |x|
      return false if self % x == 0
    end
    true
  end
end

x1 = 3
x2 = 7
x3 = 109
x4 = 673
x5 = 0
condition = false
sum = 0
until condition
  until x5.is_prime?
    x5 += 1
  end
  condition = true if (x1.to_s + x5.to_s).to_i.is_prime? and
      (x2.to_s + x5.to_s).to_i.is_prime? and
      (x3.to_s + x5.to_s).to_i.is_prime? and
      (x4.to_s + x5.to_s).to_i.is_prime? and
      (x5.to_s + x1.to_s).to_i.is_prime? and
      (x5.to_s + x2.to_s).to_i.is_prime? and
      (x5.to_s + x3.to_s).to_i.is_prime? and
      (x5.to_s + x4.to_s).to_i.is_prime?
  sum = x1 + x2 + x3 + x4 + x5
  x5 += 1
end
puts sum
# 129977413