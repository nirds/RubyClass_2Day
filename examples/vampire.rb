require './monster.rb'
class Vampire < Monster
	def initialize(noc=true, legs=2, name ="Vampire", vul=[:garlic, :sunlight], dangers=[:bites])
		super
    @helper = VampireHelper.new
	end

  DELAGTIONS = [:bite, :drink_blood, :snarl]

  def method_missing(m,*args,&block)
    puts "hello from method missing!"
    puts "you called #{m} with #{args.inspect}"
    if DELAGTIONS.include?(m)
      @helper.send(m) 
    else
      super
    end
  end

  def respond_to?(m)
    return @helper.respond_to?(m) if DELAGTIONS.include?(m)
    super
  end

end

class VampireHelper
  def bite
    puts "snarl bite!"
  end

  def drink_blood
    puts "yumm!"
  end
end
