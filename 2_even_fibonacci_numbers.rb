sum = 0
current_term = 2
previous_term = 1
while current_term <= 4_000_000 do
  sum += current_term if current_term % 2 == 0
  temp = previous_term
  previous_term = current_term
  current_term += temp
end
puts sum