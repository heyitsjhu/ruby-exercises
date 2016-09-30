module BookKeeping
  VERSION = 2
end

class Raindrops
  
  def self.is_a_factor_of_3_5_or_7?(number)
    number % 3 == 0 || 
    number % 5 == 0 || 
    number % 7 == 0
  end

  def self.convert(number)
    string = ''

    if is_a_factor_of_3_5_or_7?(number)
      string << 'Pling' if (number % 3 == 0)
      string << 'Plang' if (number % 5 == 0)
      string << 'Plong' if (number % 7 == 0)
    else
      string << number.to_s
    end
    string
  end

end
