class Calculator

  attr_reader :name, :num_calculations

  def initialize(name="no name")
    @name = name
    @num_calculations = 0
  end

  def sum(*n)
    @num_calculations += 1
    total = 0
    n.flatten.each do |i|
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
end