primes = [2, 3]
while primes.count < 10_001 do
  checked_number = primes.last
  is_prime = false
  until is_prime
    checked_number += 1
    half = (Math.sqrt(checked_number) + 1).to_i
    (2..half).each do |x|
      if checked_number % x == 0
        is_prime = false
        break
      else
        is_prime = true
      end
    end
    primes << checked_number if is_prime
  end
end
puts primes.last
