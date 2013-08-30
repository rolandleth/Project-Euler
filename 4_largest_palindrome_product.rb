# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

largest_palindrome = 0
(100..999).each do |x1|
  (x1..999).each do |x2|
    product = x1 * x2
    largest_palindrome = product if product.to_s == product.to_s.reverse and product > largest_palindrome
  end
end
puts largest_palindrome