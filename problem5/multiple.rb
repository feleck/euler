# 2520 is the smallest number that can be divided 
# by each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly 
# divisible by all of the numbers from 1 to 20?
#

require "benchmark"

def measure
  time = Benchmark.measure do
    yield
  end
  print "\n#{time*1000}"
end

measure do

  def test(max)
    number = max
    div = max-1

    while true do
      while div >= 4 do
        if number % div == 0
          divides = true
          div -= 1
        else
          div = max-1
          divides = false
          break
        end
      end

      if divides
        return number
      else
        number += max
      end
    end
  end
 
  puts test(20)
  
end

