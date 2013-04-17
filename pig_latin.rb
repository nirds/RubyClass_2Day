module PigLatinTranslator
  def translate(s)
    s.split.map do |word|
      v = first_vowel(word)
      word.slice(v..-1) + word[0,v] + "ay"
    end.join(" ")
  end
  
  def first_vowel(word)
    fv = word.gsub(/[aeiou].*$/, '').size
    fv +=1 if word =~ /^qu/
    fv
  end
end