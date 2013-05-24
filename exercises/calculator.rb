class Calculator

  attr_reader :name, :num_calculations

  def initialize name = "no name"
    @name = name
    @num_calculations = 0
  end

  def sum *args
    @num_calculations += 1
    args.flatten.inject(:+)
  end

  def multiply *args
    @num_calculations += 1
    args.flatten.inject(:*)
  end

  def pow base, exp
    base ** exp
  end

  def fac(n)
    #multiply (1..n).to_a
    return 1 if n <= 1
    n * fac(n-1)
  end








end