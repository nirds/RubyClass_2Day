class Calculator

  attr_reader :name, :num_calculations

  def initialize(name="no name")
    @name = name
    @num_calculations = 0
  end

  def sum(*n)
    n.flatten.inject(:+)
  end

  def multiply *args
     args.flatten.inject(:*)
  end

  def pow b, e
    b**e
  end

  def fac(n)
    return 1 if n <= 1
    n * fac(n-1)
    # fac_total = 1
    # (1..n).to_a.reverse
    # n.downto(1).each do |n|
    #   fac_total *= n
    # end
    # # while n > 0
    # #   fac_total *= n 
    # #   n -= 1
    # # end
    # fac_total
  end

end