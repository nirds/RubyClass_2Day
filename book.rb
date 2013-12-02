module Library
  class Book
    
    CONSTANT = "I'm Constant!"

    attr_accessor :title
    attr_reader   :author

    $test = "Hello World"

    @@num_books = 0

    def self.library_count
      @@num_books
    end

    def initialize author, title = "No title"
      @author = author
      @title = title
      @@num_books += 1
    end

  end
end