require './monster.rb'
class Vampire < Monster
  attr_accessor :bite_vic_count
	def initialize(noc=true, legs=2, name ="Vampire", vul=[:garlic, :sunlight], dangers=[:bites])
		@bite_vic_count = 0
    super
	end

  def bite(human)
    @bite_vic_count += 1
    super
  end
end
