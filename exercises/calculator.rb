class Calculator

  attr_reader :name, :num_calculations

  def initialize(name="no name")
    @name = name
    @num_calculations = 0
  end

  def sum(n1, n2)
    @num_calculations += 1
    n1 + n2
  end
end