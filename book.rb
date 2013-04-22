require './renee.rb'

module Library
  class Book
    include Renee
    LIBRARY_NAME = "Hello world books"
    $hello_global = "Hi World!"
    @@library_size = 0

    def self.library_size
      @@library_size
    end

    attr_accessor :title
    attr_reader :author, :publisher

    def initialize(t="N/A", author="N/A")
      @@library_size += 1
      @title = t
      @author = author
    end

    def author=(author)
    end

  end
end