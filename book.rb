require_relative 'title'
module Library
  class Book
    include TitleHelper
    I_SHOULDNT_CHANGE = "hello world"
    attr_accessor :author

    @@book_count = 0

    def self.book_count
      @@book_count
    end

    def initialize options = {}
      options[:author] ||= "no author"
      @title = options[:title]
      @author = options[:author]
      @@book_count += 1
    end

    def test_method arg1, *args
      puts args
    end

  end
end