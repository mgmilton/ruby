class Hamming

  def self.compute(a, b)
    case
    when a.length != b.length
      raise ArgumentError
    when a == b
      0
    else
      nucleotides_a = a.split("")
      nucleotides_b = b.split("")
      nucleotides_a.zip(nucleotides_b).map do |nucleotide1, nucleotide2|
        nucleotide1 == nucleotide2
      end.count(false)
    end
  end

end
