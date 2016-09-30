module BookKeeping
  VERSION = 2
end

class Pangram

  def self.is_pangram?(string)
    alphabet = {}

    string.downcase.each_char do |char|
      if char.match(/[a-z]/)
        alphabet[char].nil? ? (alphabet[char] = 1) : (alphabet[char] += 1)
      end
    end

    alphabet.keys.count == 26 ? true : false
  end

end
