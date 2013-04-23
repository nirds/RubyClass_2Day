module PigLatinTranslator
  def translate(text)
    text.split.map{|w| translate_word(w) }.join(" ")
  end

private 
  def translate_word(text)
    if text =~ /^(qu|[aeiou])/
     return text + 'ay' if text =~ /^[aeiou]/
     return text.split(/^qu/).last + text.slice(/^qu/) + 'ay'
    end
    text.slice(/[aeiou].*/) + text.split(/[aeiou].*/).first + 'ay'
  end
end

module PigLatinTranslator
  def translate s
    s.split.map do |word|
      v = first_vowel word
      word.slice(v..-1) + word[0,v] + "ay"
    end.join(" ")
  end
  
  def first_vowel word
    fv = word.gsub(/[aeiou].*$/, '').size
    fv +=1 if word =~ /^qu/
    fv
  end
end