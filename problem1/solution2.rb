# If we list all the natural numbers below 10 that are multiples of 3 or 5, 
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

# This is more elegant and faster? solution

# suma wyrazów ciągu arytmetycznego 0.5 * n * (a1 + an)
# 1+2+3+...+p = 0.5 * p * ( p + 1 )

require "benchmark"

def measure
  time = Benchmark.measure do
    yield
  end
  puts time
end


measure do
  class Integer
    def sum_mod modulus
      n = self.div modulus
      modulus * n * (n + 1)/2
    end
  end

  num = 999
  sum = num.sum_mod(3) + num.sum_mod(5) - num.sum_mod(15)

  puts "Sum: "+ sum.to_s
end