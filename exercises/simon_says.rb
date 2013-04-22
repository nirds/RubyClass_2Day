module SimonSays
  def echo(input)
    input
  end

  def shout(input)
    input.upcase
  end

  def start_of_word(input, n)
    input[0,n]
  end

  def first_word(input)
    input.split.first
  end

  def repeat input, n=2
    ("#{input} " * n).strip
  end
  
end