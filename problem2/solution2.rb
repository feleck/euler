# By starting with 1 and 2, the first 10 terms will be:
#
#  1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# 
# By considering the terms in the Fibonacci sequence 
# whose values do not exceed four million, find the sum of the even-valued terms.
#
# More elegant and faster method
# recurent??

require "benchmark"

def measure
  time = Benchmark.measure do
    yield
  end
  puts time
end

measure do

  def fib_sum(limit)
    sum = 0
    prev = 1
    curr = 1
    third = prev + curr
    while third < limit do
      sum += third
      prev = curr + third
      curr = third + prev
      third = prev + curr
    end
    sum
  end
  puts fib_sum(4000000)

end
