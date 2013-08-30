# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# Brute
checked_number = 1
finished = proc do |checked_nr|
  result = true
  (1..23).each do |x|
    unless checked_nr % x == 0
      result = false
      break
    end
  end
  result
end

until finished.call(checked_number)
  checked_number += 1
end

puts checked_number

# Manual
# Since 2520 is given to be the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder,
# we can find our number by multiplying it by 2 (to make sure it divides by 20) and by all the prime numbers between 10 and 20
puts 2520 * 2 * 11 * 13 * 17 * 19