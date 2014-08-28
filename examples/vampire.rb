require './monster.rb'
class Vampire < Monster
  attr_reader :coffin_location

	def initialize coffin_location, noc=true, legs=2, name ="Vampire", vul=[:garlic, :sunlight], dangers=[:bites]
    @coffin_location = coffin_location
		super noc, legs, name, vul, dangers
	end

  def drink blood
    puts "Yummm!"
  end

  def turn_you_into_bat other_vamp
    other_vamp.turn_into_bat self
  end

protected

  def turn_into_bat calling_vamp
    puts "Vampire #{calling_vamp.name} turned #{self.name} into a BAT!"
    @am_i_human = false
  end

private

  def turn_into_human
    puts "I'm now human."
  end
end
