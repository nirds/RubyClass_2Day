class Calculator
  attr_reader :name, :num_calculations

  def initialize name = "no name"
    @num_calculations = 0
    @name = name
  end

  def sum a,b
    @num_calculations += 1
    a+b
  end
end