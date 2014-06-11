require_relative 'book'

describe Book do

  before :each do
    @book = Book.new page_count: 0, author: "Dave Thomas"
  end

  it "should count the number of books in the library " do
    Book.new
    Book.new
    Book.book_count.should eq 3
  end

  it "should have a default page count of 0" do
    @book.page_count.should be_zero
  end

  it "should set the author" do
    @book.author.should eq "Dave Thomas"
  end

  it "should have a title" do
    @book.should respond_to 'title'
  end

  it "should let us set and read the title" do
    @book.title = "Programming Ruby"
    @book.title.should eq "Programming Ruby"
  end

  it "should let us set and read a page count" do
    @book.page_count = 50
    @book.page_count.should eq 50
  end


end








