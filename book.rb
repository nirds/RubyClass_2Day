class Book
  attr_accessor :pages, :title

  def initialize options={}
    @title = options[:title]
    @pages = options[:pages]
  end

  def test n, *args
    puts args
  end
end