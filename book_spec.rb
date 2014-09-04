require_relative 'book'

describe Book do

  before :each do
    @book = Book.new title: "Harry Potter", author: "JK Rowling", pages: 400
  end

  it "should count the books in the library" do
    Book.new
    Book.book_count.should eq 2
  end

  #let(book) {Book.new}

  it "should allow no author on creation" do
    book = Book.new title: "title"
    book.author.should eq "no author"
  end

  it "should have a title" do
    @book.should respond_to 'title'
  end

  it "should let us set and read the title" do
    @book.title.should eq "Harry Potter"
  end

  it "should let us set and read the author" do
    @book.author.should eq "JK Rowling"
  end

end