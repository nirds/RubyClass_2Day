class Calculator

  attr_reader :name, :num_calculations

  def initialize(name="no name")
    @name = name
    @num_calculations = 0
  end

  def sum(*n)
    @num_calculations +=1
    n.flatten!
    return 0 if n.empty?
    n.inject(:+)
  end

  def multiply(*n)
    n.flatten!
    n.inject(1){|total, i| total *= i}
  end 

  def pow(b,e)
    return 1 if e == 0
    b * pow(b,e-1)
  end

  def fac(n)
    multiply (1..n).to_a
  end

end