require './book_helper.rb'

=begin
    this is a multi-line comment
  sldjfsd
=end
HELLO = "hello world"

module ReneesLibrary
  class Book
    include BookHelper

    HELLO = 4


    def self.book_count
      @@book_count ||= 0
    end


    attr_accessor :pages, :title

    def initialize *args
      @pages = args[0]
      @title = args[1]
      @@book_count +=  1
    end

    def make_four
      $four = 4
    end

  protected
    def more_secure
    end

  private
    def even_more_secure
    end

  end
end
puts "Hello world"

