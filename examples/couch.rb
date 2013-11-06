class Couch

	attr_accessor :pillows

	def initialize(pillows, cushions, dogs)
		@pillows = pillows
		@cushions = cushions
		@dogs = dogs
	end

	[:pillow, :cushion, :dog].each do |name|
		define_method("#{name}_count") do
			instance_variable_get("@#{name}s").count
		end


	end

	def pillows
		@pillows.map{|p| "pillow color: #{p}"}
	end


	def method_missing method_name, *args, &block
		puts "Welcome to Method Missing!"
		
	end




end
