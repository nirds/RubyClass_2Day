require './book.rb'

describe Book do
  it "should have a title" do
    book = Book.new
    book.should respond_to "title"
  end
  it "should have a author" do
    book = Book.new
    book.should respond_to "author"
  end
  it "should have the title and author we set" do
    title = "Harry Potter"
    author = "J.K. Rowling"
    book = Book.new(title, author)
    book.title.should eq title
    book.author.should eq author
  end

  it "should allow us to change the title" do
    book = Book.new
    book.title = "Happy Trails Farm"
    book.title.should eq "Happy Trails Farm"
  end
end