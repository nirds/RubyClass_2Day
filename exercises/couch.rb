require 'pry'

class Array
	def second
		self[1]
	end
end

class Couch

	def initialize(pillows, cushions)
		@pillows = pillows
		@cushions = cushions
		binding.pry
	end


	[:pillows, :cushions].each do |s|
		define_method("how_many_#{s}") do
			instance_variable_get("@#{s}").count
		end
		puts "Self is: #{self}"
		define_method("#{s}_colors") do
			instance_variable_get("@#{s}").join(' ')
		end

		define_method("#{s}_test") do
			puts "Self is: #{self}"
		end

		define_method(s)  do
			instance_variable_get("@#{s}")
		end

		define_method("#{s} =") do |param|
			instance_variable_set("@#{s}", param)
		end

	end

	def to_str
		"I am a Couch"
	end

	def respond_to?(meth)
		true
	end

	def method_missing(meth, *args, &block)
		puts "You called #{meth} with #{args.join(' ')}"
		puts "#{self}"
		self.class.class_eval(
"
	def #{meth} *args
		puts args[0]
	end
"	)

		self.send(meth, args)
	end
end

Couch.new([], [])
