module BookKeeping
  VERSION = 2
end


class Fixnum

  ROMAN_NUMERALS = {
    1000 => "M",  
     900 => "CM",  
     500 => "D",  
     400 => "CD",
     100 => "C",  
      90 => "XC",  
      50 => "L",  
      40 => "XL",  
      10 => "X",  
        9 => "IX",  
        5 => "V",  
        4 => "IV",  
        1 => "I"
  }

  def to_roman
    num, roman_numeral = self, ""
    ROMAN_NUMERALS.each do |value, roman_letter|
      roman_numeral << roman_letter*(num / value)
      num = num % value
    end
    return roman_numeral
  end

end
