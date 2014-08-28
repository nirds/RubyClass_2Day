require './named_thing.rb'
class Monster
	include NamedThing
	attr_accessor :vulnerabilities, :dangers, :weapons
    attr_reader :nocturnal, :legs

  @@monster_count = 0

	def self.count
  	@@monster_count
  end

	def initialize(noc, legs, name="Monster", vul = [], dangers = [])
		super(name)
		@nocturnal = noc
		@vlunerabilities = vul
		@dangers = dangers
		@legs = legs
		@@monster_count += 1
	end

	def method_missing meth, *args, &block
		"puts hi from monster!"
		self.class.class_eval do
			define_method(meth) do
				block.call if block_given?
			end
		end

		self.send(meth)
	end

public

	def attack human_name="Ragz"
		puts "#{name} #{dangers.sample} #{human_name}!!"
	end

protected

	def whisper_creepily
		puts "boooo....."
	end

private

	def set_nocturnal_to_false
		@nocturnal = false
	end

end
