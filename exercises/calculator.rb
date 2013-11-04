class Calculator

  attr_accessor :name
  attr_reader :num_calculations

  def initialize name = "no name"
    @name = name
    @num_calculations = 0
  end

  def sum *a
    @num_calculations += 1
    result = 0
    a.flatten.each do |item|
      result += item
    end
    result
  end

  def multiply *a
    @num_calculations += 1
    result = 1
    a.flatten.each do |item|
      result *= item
    end
    result
  end

  def pow base, exp
    base ** exp
  end

  def fac n
    return 1 if n.zero?
    n * fac(n-1)
  end


end