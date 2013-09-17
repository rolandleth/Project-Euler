# The following iterative sequence is defined for the set of positive integers:
# n  n/2 (n is even)
# n  3n + 1 (n is odd)
# Using the rule above and starting with 13, we generate the following sequence:
# 13  40  20  10  5  16  8  4  2  1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms.
# Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
# Which starting number, under one million, produces the longest chain?

steps = 0
nr = 2
max_nr  = 0

until nr == 999_999 do
  x = nr
  temp_steps = 1
  until x == 1
    if (x % 2) == 0
      x = x / 2
    else
       x = 3 * x + 1
    end
    temp_steps += 1
  end
  if temp_steps > steps
    steps = temp_steps
    max_nr = nr
  end
  nr += 1
end

p max_nr