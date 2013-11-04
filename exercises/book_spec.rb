require './book.rb'

describe Book do

  context "::book_count" do

    it "should count the number of books" do
      Book.new
      Book.new
      Book.book_count.should eq 2
    end

  end
  
  context "#pages" do

    before :each do
      @book = Book.new 1004
    end


    it "should have a pages method" do
      @book.should respond_to "pages"
    end

    it "should allow us to set the pages" do
      @book.pages = 42
      @book.pages.should eq 42
    end

    it "should give us the number of pages" do
      @book.pages.should eq 1004
    end

  end

  context "#title" do

    before :each do
      @book = Book.new 0, "Harry Potter"
    end

    it "should have a title" do
      @book.title.should eq "Harry Potter"
    end


  end


end