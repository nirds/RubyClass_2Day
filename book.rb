module SharedBehavior
  def read_happy
    $happy_global
  end

  def read_the_test_constant
    I_SHOULD_NOT_CHANGE
  end
end




I_SHOULD_NOT_CHANGE = 42

class Book
  include SharedBehavior
  attr_accessor :title, :page_count
  attr_reader :author

  @@book_count = 0

  def self.book_count
    @@book_count
  end

  def initialize stuff = {}
    stuff[:page_count] ||= 0
    @@book_count += 1
    @author = stuff[:author]
    @page_count = stuff[:page_count]
  end

  def method_missing m, *args, &block
    puts "hello from book! you called #{m}"
    puts "you called #{m} with #{args}"
    yield if block_given?
    puts self.inspect
  end

  # attr_reader :title
  # attr_writer :title

  # def title
  #   @title
  # end

  # def title= title
  #   @title = title#.downcase
  # end



end