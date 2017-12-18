class RnaTranscription
end

class Complement

  @dna_to_rna = {
    "A" => "U",
    "T" => "A",
    "C" => "G",
    "G" => "C",
    "U" => "A"
  }

  def self.of_dna(string)
    nucleotides = string.split("")
    if nucleotides == ["U"]
      return ""
    end
    s = []
    nucleotides.each do |nucleotide|
      s << @dna_to_rna[nucleotide]
    end
    if s != s.compact
      return ""
    else
      return s.join("")
    end
  end
end
