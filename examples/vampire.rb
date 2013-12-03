load 'monster.rb'
class Vampire < Monster
  @@test = "hi"

  def self.say_hello
    puts @@test
  end

	def initialize(noc=true, legs=2, name ="Vampire", vul=[:garlic, :sunlight], dangers=[:bites])
	 @name = name
  end

  alias :old_say_name :say_name 

protected
  attr_accessor :test

private
  def say_name
    puts "hi"
    old_say_name
  end
end
