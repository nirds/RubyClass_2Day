module NamedThing
  attr_accessor :name

  def initialize name = "no name"
    @name = name
  end

  def shout_name
    name.upcase
  end
end