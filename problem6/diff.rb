# The sum of the squares of the first ten natural numbers is,
# 1^2 + 2^2 + ... + 10^2 = 385
#
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)^2 = 552 = 3025
#
# Hence the difference between the sum of the squares 
# of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
# 
# Find the difference between the sum of the squares 
# of the first one hundred natural numbers and the square of the sum.
#

require "benchmark"

def measure
  time = Benchmark.measure do
    yield
  end
  print "\n#{time*1000}"
end

measure do

  def test(value)
    puts sum_sq = value*(value +1)*(2*value+1)/6
    puts sq_sum = (value*(1 + value)/2)**2
    return sq_sum - sum_sq
  end

  puts test(100)
  
end

=begin
  suma kwadratów kolejnych liczb nat.
  n*(n+1)*(2*n+1)/6

  suma ciągu arytm.
  n*(a1 + an)/2
  
=end