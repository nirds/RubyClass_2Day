require_relative 'book.rb'

describe Book do

  context "class methods" do

    it "should give us the count of books in our library" do
      Book.new "test"
      Book.new "test2"
      Book.library_count.should eq 2
      puts $test
    end

  end

  context "instance methods " do

    before :each do
      @book = Book.new "DHH"
    end

    it "should have a title" do
      @book.should respond_to "title"
    end

    it "should let us set a title" do
      @book.title = "Ruby on Rails"
      @book.title.should eq "Ruby on Rails"
    end

    it "should have an author" do
      @book.author.should eq "DHH"
    end

  end

end