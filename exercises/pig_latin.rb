module PigLatinTranslator

  def translate(sentance)
    sentance.split.map{|w| trans(w)}.join(" ")
  end

private

  def trans(w)
    r = /qu|^[^aeiou]*/
    start = w.slice(r)
    i = start.size
    l = w.size
    w[i..l] + start + 'ay'
  end
end