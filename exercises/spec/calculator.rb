class Calculator

  attr_reader :name, :num_calculations

  def initialize(name="no name")
    @name = name
    @num_calculations = 0
  end

  def sum(*args)
    @num_calculations += 1
    total = 0
    args.flatten.each do |i|
      total += i
    end
    total
  end

  def multiply(*args)
    @num_calculations += 1
    total = 1
    args.flatten.each do |i|
      total *= i
    end
    total
  end

  def pow(base, exp)
    @num_calculations += 1
    base**exp
  end

  def fac(n)
    @num_calculations += 1
    return n*fac(n-1) unless n < 2
    1
  end
end