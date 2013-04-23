require './named_thing.rb'

module Thing
	def shout_name
		puts "hi"
	end
end

class Monster
	include Thing
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
end	
