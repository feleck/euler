# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?
# Brutforce method


require "benchmark"

def measure
  time = Benchmark.measure do
    yield
  end
  puts time
end


measure do



  def prime(value)
    i = 3
    a=[]
    while i < value do
      if value % i == 0
        #print "#{value}, #{i}"
        j = 1
        while j < i do
          #print "val: #{value}, i: #{i}, j: #{j}"
          prime(j)
          a << i if i % j == 0
          j += 1
        end
      end
      i += 1
    end
    a
  end

  print prime(12).to_s

end