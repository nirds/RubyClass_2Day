class Book
  def method_missing(meth, *args, &block)
    puts "you called #{meth} with #{args.inspect} Welcome to method_missing"
    puts "#{self}"
    self.class.class_eval do
      define_method(meth) do
        puts "hi"
        yield if block_given?
      end
    end

    self.send(meth)
  end

  def respond_to?(method)
    true
  end
end