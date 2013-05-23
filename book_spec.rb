require './book.rb'

describe Book do

  context "class level methods" do

    it "should count the number of books in the library" do
      Book.library_count.should eq 0
      Book.new
      Book.new
      Book.library_count.should eq 2
    end

  end

  context "testing the author attribute" do
    before :each do
      @book = Book.new
    end
    
    it "should have an author" do
      @book.should respond_to 'author'
    end

    it "should let me set the author" do
      the_author =  "Charles Dickens"
      @book.author = the_author
      @book.author.should eq the_author
    end
  end

  context "setting up new books" do

    it "should set the author when we initialize" do
      author = "J.K. Rowling"
      book = Book.new(author)
      book.author.should eq author
    end


  end

end