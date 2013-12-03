class Calculator
  attr_reader :name, :num_calculations
  
  def initialize name = "no name"
    @name = name
    @num_calculations = 0
  end

  def sum *args
    @num_calculations += 1
    total = 0
    args.flatten.each do |i|
      total += i
    end
    total
  end

  def multiply *args
    total = 1
    args.flatten.each do |i|
      total *= i
    end
    total
  end

  def pow base, exp
    base**exp
  end



  def fac n 
    return 1 if n.zero?
    n * fac(n-1)
    #multiply (1..n).to_a
  end


















end