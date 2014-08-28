require_relative 'named_thing'
class Calculator
  include NamedThing
  attr_reader :num_calculations

  def initialize name = "no name"
    @name = name
    @num_calculations = 0
  end

  def sum *a
    @num_calculations += 1
    a.flatten.inject(:+)
  end
  alias_method :add, :sum

  def multiply *args
    @num_calculations += 1
    a.flatten.inject(:*)
  end

  def pow base, exp
    base ** exp
    multiply Array.new(exp, base)
    product = 1
    exp.times { product *= base}
    product
  end

  def fac n
    product = 1
    n.downto(1) do |i|
      product *= i
    end
    product
  end

  def fac n
    return 1 if n.zero?
    n * fac(n-1)
  end
end