module SimonSays

  def echo input
    input
  end

  def shout input
    input.upcase
  end

  def repeat input, n = 2
    input_space = input + " "
    repeated_input = input_space * n
    repeated_input.chop
    #([input] * n).join(" ")
  end

  def start_of_word word, i
    word.slice(0,i)
    word[0,i]
    word[0...i]
  end

  def first_word sentance
    sentance.split(" ").first
  end

end