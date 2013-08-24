# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

sum = 0

for i in 1..999
  three = i % 3
  five = i % 5
  sum += i if (three == 0 || five == 0)
  puts i.to_s + " " + three.to_s + " " + five.to_s
end

puts sum