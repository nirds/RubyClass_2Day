require './book.rb'

describe Library::Book do
  
  before :each do 
    @book = Library::Book.new
  end

  context "#page_count" do

    it "should have a page count" do
      @book.page_count.should eq 0
    end

    it "should allow you to set the page count on a new book" do
      book_with_4_pages = Library::Book.new(4)
      book_with_4_pages.page_count.should eq 4
    end

    it "should allow you to change the page count" do
      @book.page_count = 5
      @book.page_count.should eq 5
    end

  end

  it "should let us set the title" do
    @book.title = "Harry Potter"
    @book.title.should eq "Harry Potter"
  end
 
end