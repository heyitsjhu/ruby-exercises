require 'pry'

module BookKeeping
  VERSION = 2
end

class Pangram

  def self.contains_every_alphabet?(string)
    alphabet = {}
    string.downcase.each_char do |char|
      if char.match(/[a-z]/)
        if alphabet[char].nil?
          alphabet[char] = 1
        else
          alphabet[char] += 1
        end
      end
    end
    # binding.pry
    alphabet.keys.count == 26 ? true : false
  end

  def self.is_pangram?(string)
    return false if string == ''
    contains_every_alphabet?(string)
  end

end
