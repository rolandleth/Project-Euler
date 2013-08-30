sum = 0
(1...1000).each do |x|
  sum += x if x % 3 == 0 or x % 5 == 0
end
puts sum