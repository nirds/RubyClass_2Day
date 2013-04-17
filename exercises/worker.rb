class Worker
  def self.work(n=1)
    result = []
    n.times do
      result << yield
    end
    #puts result
    result.last
  end

  def method_missing(m, *args, &block)
    puts "You called #{m} with #{args.inspect}"
    self.class.class_eval do
      define_method(m) do
        puts "hi"
      end
    end

    self.send(m)
  end

end