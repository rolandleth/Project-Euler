# It can be seen that the number, 125874, and its double, 251748, contain exactly the same digits, but in a different order.
# Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x, contain the same digits.

condition = false
number = 0
until condition
  number += 1
  x1 = number.to_s.split('')
  x2 = (number * 2).to_s.split('')
  x3 = (number * 3).to_s.split('')
  x4 = (number * 4).to_s.split('')
  x5 = (number * 5).to_s.split('')
  x6 = (number * 6).to_s.split('')
  condition = true if x1.sort == x2.sort and
      x1.sort == x3.sort and
      x1.sort == x4.sort and
      x1.sort == x5.sort and
      x1.sort == x6.sort
end
puts number