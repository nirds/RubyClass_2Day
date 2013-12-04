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

	def respond_to? m_name
		true
	end


	def method_missing m_name, *args, &block
		puts "Hello from method! missing!"
		puts "You called #{m_name} with #{args}"
		puts self
		self.class.class_eval do 
			define_method m_name do |*args, &my_block|
				yield if block_given?
				my_block.call if block_given?
			end
		end

		self.send m_name

	end



end	
