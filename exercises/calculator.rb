class Calculator
  attr_reader :name, :num_calculations

  def initialize name = "no name"
    @num_calculations = 0
    @name = name
  end

  def sum *args
    @num_calculations += 1
   # first way:
   #  sum = 0
   #  args.flatten.each do |n|
   #    sum += n
   #  end
   #  sum
   # second way:
   # sum = args.flatten.inject(:+)
   # sum ||= 0
   # third way:
   # args.flatten.inject(:+) || 0
   # fourth way:
   args.flatten.inject(0, :+)
  end

  def multiply *args
    args.flatten.inject :*
  end

  def pow base, exp
    base ** exp
    #a = Array.new(exp, base)
    #multiply a
  end

  def fac n
    (1..n).inject(:*) || 1
  end

end








