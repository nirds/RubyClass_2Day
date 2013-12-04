class Printer
	def print(book)
    "This is a weird thing!"
		book.print if book.respond_to? :print
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

class ChildrenBook

end
