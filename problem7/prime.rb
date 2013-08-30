#  By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, 
#  we can see that the 6th prime is 13.
#
# What is the 10 001st prime number?
#
#  jeśli liczba naturalna N większa od 1 nie jest podzielna 
#  przez żadną z liczb pierwszych nie większych od pierwiastka z N, to N jest liczbą pierwszą.
# use: time


def is_prime?(value)
  known_primes = generate_primes(value)
  return true if known_primes.include? value
  false
end

# Sito Atkina!!!


# SITO Eratostenesa
# ze zbioru liczb naturalnych z przedziału [2,n], tj. {2, 3, 4, ..., n}, wybieramy najmniejszą, 
# czyli 2, i wykreślamy wszystkie jej wielokrotności większe od niej samej, to jest 4, 6, 8, ....
# Wykreślanie powtarzamy do momentu, gdy liczba i, której wielokrotność wykreślamy, 
# będzie większa niż sqrt{n}.
# Dla danej liczby n wszystkie niewykreślone liczby mniejsze, bądź równe n są liczbami pierwszymi.

def generate_primes(number)
  primes = (2..number).to_a
  result = []
  smallest = primes.first

  while smallest * smallest < number do
    result << primes.delete(smallest)
    i = 1
    while i <= number do
      primes.delete(i * smallest)
      i += 1
    end
    smallest = primes.first
  end
  (result + primes)
end


def find_prime_nr(prime_nr)
  puts prime_nr
  primes = generate_primes(prime_nr)
  puts primes.to_s
  i = 1
  while primes.length < prime_nr do
 #   primes << i if is_prime?(i) 
    i += 1
  end
  return primes.last
end

#find_prime_nr(6)

test = generate_primes(100000) # 100000 - long enought
puts test.length
#puts is_prime?(17)
#puts find_prime_nr(1)

=begin
val = 127
if is_prime?(val) 
  print "#{val} IS a prime number!"
else
  print "#{val} is NOT a prime number!"
end
=end