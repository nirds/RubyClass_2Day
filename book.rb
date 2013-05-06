require './p_c.rb'

module Library
  class Book
    include PC
    MY_NAME = "Renee"
    $hello_global = "Hello World"

    attr_accessor :title

    @@library_count = 0

    def self.library_count
      @@library_count
    end

    def self.library_count=(n)
      @@library_count = n
    end

    def initialize(p = 0)
      @@library_count += 1
      @page_count = p
    end

  end
end