require_relative 'book'
=begin
  multi-line comment
=end
describe Book do

  before :each do
    @book = Book.new
  end

  it "should have a pages method" do
    @book.should respond_to "pages"
  end

  it "should let us set pages" do
    @book.pages = 11
    @book.pages.should eq 11
  end

  it "should have a title attribute" do
    t = "Harry Potter"
    @book.title = t
    @book.title.should eq t
  end

  it "should allow me to set the title and pages for a new book" do
    book = Book.new title: "Ruby is Fun", pages: 342
    book.pages.should eq 342
    book.title.should eq "Ruby is Fun"
  end

end





