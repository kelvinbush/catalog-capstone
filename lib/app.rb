require_relative '../io/book_io'

class App

  def initialize
    @books = []
    @labels = []
  end

  def add_book(book)
    @books.push(book)
  end

  def add_label(label)
    @labels.push(label)
  end

  def list_books
  end

end
  