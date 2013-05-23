module SimonSays
  def echo input
    input
  end

  def shout input
    input.upcase
  end

  def repeat input, n = 2
    ("#{input} " * n).chop
  end

  def start_of_word(input, i)
    input.slice(0,i)
  end

  def first_word(input)
    input.split.first
  end
end