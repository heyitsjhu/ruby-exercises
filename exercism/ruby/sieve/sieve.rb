class Sieve
  
  def initialize(number)
    @limit = number
    @primes = []
  end

  def is_prime?(number)
    factors = 0
    1.upto(number) { |i| factors += 1 if (number % i == 0) }
    factors == 2 ? true : false
  end

  def primes
    return @primes if @limit < 2
    (1..@limit).each { |i| @primes << i if is_prime?(i) }
    @primes
  end
end
