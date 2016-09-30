class Complement
  
  DNA_COMPLEMENT = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }

  def self.of_dna(nucleotides)
    rna = ''

    nucleotides.each_char do |nucleotide|
      return (rna = '') if DNA_COMPLEMENT[nucleotide].nil?
      rna << DNA_COMPLEMENT[nucleotide]
    end

    rna
  end
end

module BookKeeping
  VERSION = 4
end
