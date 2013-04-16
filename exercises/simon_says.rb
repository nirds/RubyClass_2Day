module SimonSays
  def echo(input)
    input
  end

  def shout(input)
    input.upcase
  end

  def start_of_word(input, size)
    input[0, size]
  end

  def first_word(sentance)
    sentance.split.first
  end

  def repeat(input, n=2)
    input_with_space = input + ' '
    repeated = input_with_space * n
    repeated.strip
  end

  def hi(*a, h)
    puts h
    puts a.inspect
  end

  def hi
    puts "hello"
  end
end