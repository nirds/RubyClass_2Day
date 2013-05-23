module Library
  class Book
    attr_accessor :title, :page_count, :author

    def initialize(title, page_count, author)
      @title = title
      @page_count = page_count
      @author = author
    end

  end
end