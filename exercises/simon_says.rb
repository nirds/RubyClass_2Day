module SimonSays

  def echo input 
    input
  end

  def shout input
    input.upcase
  end

  def repeat input, n=2
    ("#{input} " * n).chop
  end

  def start_of_word txt, i
    txt[0,i]
  end

  def first_word(sentance)
    sentance.split.first
  end
end