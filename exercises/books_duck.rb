class Printer
	def print(book)
		puts book.print
	end
end

class Book
	attr_accessor :title, :author
  def print
    "This book is a book"
  end
end

class FictionBook < Book
  def print
    "This book is Fiction!"
  end
end

class NonFictionBook < Book
  def print
    "This book is All True!!"
  end
end

class ChildrensBook < Book
  def print
    "This is a children's Book"
  end
end
