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
    number = max*max
    div = max-1

    while true do
      while div >= 11 do
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


# copied from forum!!!
  def snd(max) 
    result = 1 
    for n in 1..max 
      prev = result 
      while result % n > 0 
        result += prev 
      end 
    end 
    return result 
  end 

  #puts snd(20)
 
  puts test(20)
  
end

