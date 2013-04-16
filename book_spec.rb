require './book.rb'

describe Book do
  it "should have pages" do
    Book.new.should respond_to "pages"
  end

  it "can create a new book with 10 pages" do
    book = Book.new(10)
    book.pages.should eq 10
  end

  it "should allow the setting of pages" do
    book = Book.new
    book.pages = 4
    book.pages.should eq 4
  end

end