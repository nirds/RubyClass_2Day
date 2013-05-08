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

  # def method_missing(m, *args)
  #   puts "Hello from Method missing!"
  #   puts "You called #{m} with"
  #   bite(1)
  # end

  def method_missing(meth, *args, &block)
    puts "You called #{meth} with #{args.join(' ')}"
    puts "#{self}"
    self.class.class_eval do
      define_method(meth) do
        yield
      end
    end

    self.send(meth)
  end

end
