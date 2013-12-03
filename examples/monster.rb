load 'named_thing.rb'
class Monster
	include NamedThing
	attr_accessor :vulnerabilities, :dangers
  attr_reader :nocturnal, :legs
	
	def initialize(noc, legs, name="Monster", vul = [], dangers = [])
		super(name)
		@nocturnal = noc
		@vlunerabilities = vul
		@dangers = dangers
		@legs = legs
	end

	def attack
		puts "ATTACK!"
	end

	def another_method
		puts "test"
	end
end	
