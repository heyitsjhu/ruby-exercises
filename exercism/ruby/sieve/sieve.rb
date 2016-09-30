class Sieve
  
  def initialize(number)
    @limit = number
  end

  def primes
    primes = []

    return primes if @limit < 2

    (1..@limit).each do |i|
      primes << i if is_prime?(i)
    end

    primes
  end

  def is_prime?(number)
    factors = 0
    1.upto(number) do |i|
      factors += 1 if (number % i == 0)
    end
    factors == 2 ? true : false
  end
end
