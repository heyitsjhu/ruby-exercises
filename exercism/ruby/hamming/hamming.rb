module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end

class Hamming

  def self.compute(strand_a, strand_b)
    raise ArgumentError if (strand_a.length != strand_b.length)
    
    hamming_distance, i = 0, 0

    strand_a.each_char do |char|
      (hamming_distance += 1) unless (char == strand_b[i])
      i += 1
    end

    hamming_distance
  end
end
