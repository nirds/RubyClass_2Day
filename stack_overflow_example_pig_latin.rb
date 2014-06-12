
module PigLatinTranslator
  def translate(phrase)
    word_count = phrase.split.size
    if word_count == 1
      vowels = ["a","e","i","o","u"]
      # starts with a vowel
      if vowels.index(phrase[0].chr)
        phrase[0..-1] << "ay"
      else
        # starts with a consonant, 2nd letter NOT a vowel
        if ! vowels.index(phrase[1].chr)
          phrase[2..-1] << phrase[0,2] << "ay"
        else
          # starts with a consonant, 2nd & 3rd letters are vowels, word longer than 3 chrs
          if vowels.index(phrase[2].chr) && phrase.size > 3
            phrase[2..-1] << phrase[0,2] << "ay"
          else
            # starts with a consonant, 2nd & 3rd letters are NOT vowels
            phrase[1..-1] << phrase[0] << "ay"
          end
        end
      end
    else
      translated_phrase = []
      phrase.split.each { |word|
        translated_phrase << self.translate(word)
      }
      translated_phrase.join(" ")
    end
  end
end