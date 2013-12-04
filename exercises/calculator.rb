class Calculator
  attr_reader :name, :num_calculations
  
  def initialize name = "no name"
    @name = name
    @num_calculations = 0
  end

  [:sum, :multiply].each do |m|
    define_method m do |*args, start_value, operation|
      @num_calculations += 1
      args.flatten.inject(start_value, operation)
    end
  end

  # def sum *args
  #   @num_calculations += 1
  #   args.flatten.inject(0, :+)
  # end

  # def multiply *args
  #   @num_calculations += 1
  #   args.flatten.inject(1, :*)
  # end

  def pow base, exp
    base**exp
  end



  def fac n 
    return 1 if n.zero?
    n * fac(n-1)
    #multiply (1..n).to_a
  end


















end