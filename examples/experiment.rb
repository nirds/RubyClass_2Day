class Object
	def call_chain
		"#{self}"
	end
end

class Animal
	 def call_chain
	 	"#{self}.#{super}"
	 end
end

module NamedThing
	def call_chain
		"#{self}.#{super}"
	end
end

module Speaker
	def call_chain
	 	"#{self}.#{super}"
	end
end

class Person < Animal
	include Speaker
	include NamedThing

	def call_chain
		"#{self}.#{super}"
	end
end

class Renee < Person
	def call_chain
		"#{self}.#{super}"
	end
end

