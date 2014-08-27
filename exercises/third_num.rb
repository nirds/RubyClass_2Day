class ThirdNum
  include Comparable
  attr_reader :num
  def initialize num
    @num = num
  end

  def succ
    ThirdNum.new(@num + 3)
  end

  def <=> other
    num <=> other.num
  end

  def inspect
    @num
  end

end