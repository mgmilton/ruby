class Pangram

  def self.pangram?(phrase)
    characters = phrase.downcase.split("")
    alphabet = [*"a".."z"]
    alphabet.all? do |letter|
      characters.include?(letter)
    end
  end
end
