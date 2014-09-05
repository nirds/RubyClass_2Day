class Object
	def call_chain
		"Object#{self}"
	end
end

class Animal
	 def call_chain
	 	"Animal.#{super}"
	 end
end

module NamedThing
	def call_chain
		"NamedThing.#{super}"
	end
end

module Speaker
	def call_chain
	 	"Speaker.#{super}"
	end
end

class Person < Animal
	include NamedThing
	include Speaker
	def call_chain
		"Person.#{super}"
	end
end

class Renee < Person
	def call_chain
		"#{self}.#{super}"
	end

	def method_missing m, *args, &block
		puts "hi from method missing!"
		puts " you called #{m} with #{args}"
		self.class.class_eval do
			define_method(m) do |&other_b|
				puts "method #{m}"
				block.call if block_given?
				other_b.call
			end
		end
		self.send(m) { puts "other block"}
	end
end

