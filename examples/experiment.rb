class Object
	def call_chain
		"Object.#{self}"
	end
end

class Animal
	 def call_chain
	 	"Animal.#{self}.#{super}"
	 end
end

module NamedThing
	def call_chain
		"NamedThing.#{self}.#{super}"
	end
end

module Speaker
	def call_chain
	 	"Speaker.#{self}.#{super}"
	end
end

class Person < Animal
	include NamedThing
	include Speaker
	def call_chain
		"Person.#{self}.#{super}"
	end
end

class Renee < Person
	def call_chain
		"Renee.#{self}.#{super}"
	end
end

