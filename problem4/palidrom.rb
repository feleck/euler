# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit 
# numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.



require "benchmark"

def measure
  time = Benchmark.measure do
    yield
  end
  print "\n#{time*1000}"
end


measure do

  def palidrome(x, z)
    palidromes = []
    while x > 499 do
      y = z
      while y >= x do # to reduce no op operations
        if is_palidrome?(x * y)
          palidromes << x * y
          break
        end
        y -= 1
      end
      x -= 1
    end
    return palidromes.max
  end

  def is_palidrome2?(z)
    z_string = z.to_s
    z_length = z_string.length
    left = z_string[0,z_length/2]
    if z_length % 2 == 0
      right =  z_string[z_length/2, z_length]
    else
      right =  z_string[z_length/2+1, z_length]
    end
    left == right.reverse
  end

  def is_palidrome?(z)
    straigth = z.to_s
    straigth == straigth.reverse
  end

  puts palidrome(999, 999)
  #test(20, 20)
  #puts is_palidrome2?(9009)
end