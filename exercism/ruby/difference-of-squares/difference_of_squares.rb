module BookKeeping
  VERSION = 3
end

class Squares

  attr_reader :number

  def initialize(number)
    @number = number
  end

  def square_of_sum
    total = 0
    @number.downto(1) { |i| total += i }
    total ** 2
  end

  def sum_of_squares
    total = 0
    @number.downto(1) { |i| total += i**2 }
    total
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
