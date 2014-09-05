require './monster.rb'
class Vampire < Monster

	def initialize(noc=true, legs=2, name ="Vampire", vul=[:garlic, :sunlight], dangers=[:bites])
		super
	end

  def bite human
    puts "YUMM! #{human}"
  end


  def turn_them_into_bat other_vampire
    other_vampire.turn_into_bat(self)
  end

  def turn_them_human other_vampire
    other_vampire.turn_into_human
  end

  def turn_human
    turn_into_human
  end

protected

  def turn_into_bat changer
    puts "#{changer.name} turned #{name} into a bat"
  end

private
  def turn_into_human
    puts "#{name} is now human"
  end
end
