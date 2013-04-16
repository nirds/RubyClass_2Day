module PrettyString
  attr_accessor :test
  def to_s
    "This thing is a #{self.class}"
  end

  def happy
    "Hello world"
  end
end

class Book
  include PrettyString
  HELLO = "hello world"


  @@total_books = 0

  def self.total_books
    @@total_books
  end

  attr_accessor :pages, :title

  def initialize(p=0)
    @@total_books += 1
    @pages = p
  end

  def inspect
    "The pages are #{@pages}"
  end

protected


private 

  def you_cant_see_me
    "Hello... NOT!"
  end    

end